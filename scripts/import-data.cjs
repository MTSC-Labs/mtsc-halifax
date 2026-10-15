#!/usr/bin/env node
/**
 * Transform MySQL dump to D1-compatible SQL.
 * - Maps camelCase columns to snake_case
 * - Converts MySQL escaping (\' \" \\) to SQLite escaping ('')
 * - Lowercases table names (Events -> events, Prayers -> prayers)
 */

const fs = require('fs');
const path = require('path');

const inputFile = path.join(__dirname, '..', 'data', 'u930449354_mtsc.sql');
const outputFile = path.join(__dirname, '..', 'data', 'd1-import.sql');

const sql = fs.readFileSync(inputFile, 'utf8');

// Extract all INSERT blocks (multi-line, ending with ;)
const lines = sql.split('\n');
const insertBlocks = [];
let currentBlock = null;

for (const line of lines) {
  if (line.startsWith('INSERT INTO `Events`') || line.startsWith('INSERT INTO `Prayers`')) {
    currentBlock = line;
  } else if (currentBlock !== null) {
    currentBlock += '\n' + line;
    if (line.trimEnd().endsWith(';')) {
      insertBlocks.push(currentBlock);
      currentBlock = null;
    }
  }
}

let output = '-- D1 Import: Generated from MySQL dump\n-- Events: camelCase -> snake_case mapping\n-- Prayers: camelCase -> snake_case mapping\n\n';

for (let block of insertBlocks) {
  // Map table names (lowercase)
  block = block.replace(/INSERT INTO `Events`/g, 'INSERT INTO events');
  block = block.replace(/INSERT INTO `Prayers`/g, 'INSERT INTO prayers');

  // Map Events columns
  block = block.replace(/`eventDate`/g, 'event_date');
  block = block.replace(/`isFeatured`/g, 'is_featured');
  block = block.replace(/`createdAt`/g, 'created_at');
  block = block.replace(/`updatedAt`/g, 'updated_at');

  // Map Prayers columns
  block = block.replace(/`firstName`/g, 'first_name');
  block = block.replace(/`lastName`/g, 'last_name');
  block = block.replace(/`prayerRequest`/g, 'prayer_request');
  block = block.replace(/`isApproved`/g, 'is_approved');

  // Remove remaining backticks from column names
  block = block.replace(/`(id|title|url|content|email|password_hash|role)`/g, '$1');

  // Convert MySQL escaping to SQLite escaping
  // MySQL uses \' for single quotes inside strings; SQLite uses ''
  // MySQL uses \" for double quotes; SQLite just uses "
  // MySQL uses \\ for backslash; SQLite just uses \
  // We need to be careful: process character by character within string values

  // Strategy: MySQL's \' -> '' (SQLite), MySQL's \\ -> \, MySQL's \" -> "
  // But we must NOT break the SQL structure. The values are inside '...'
  // We'll do targeted replacements within the VALUES portion only.

  // Replace \\' (escaped quote in MySQL) with '' (SQLite escaped quote)
  // But \\\\' means literal backslash + quote. Handle carefully.
  // In the actual file, MySQL dumps use \' for embedded quotes.
  // In the file as read by Node, \' appears as the two chars: \ and '

  // The safest approach: walk the string, track if we're inside a SQL string literal
  const chars = [...block];
  let result = [];
  let inString = false;
  let i = 0;

  while (i < chars.length) {
    if (!inString) {
      if (chars[i] === "'") {
        inString = true;
        result.push(chars[i]);
        i++;
      } else {
        result.push(chars[i]);
        i++;
      }
    } else {
      // Inside a SQL string
      if (chars[i] === '\\' && i + 1 < chars.length) {
        const next = chars[i + 1];
        if (next === "'") {
          // MySQL \' -> SQLite ''
          result.push("'", "'");
          i += 2;
        } else if (next === '"') {
          // MySQL \" -> just "
          result.push('"');
          i += 2;
        } else if (next === '\\') {
          // MySQL \\ -> just \
          result.push('\\');
          i += 2;
        } else if (next === 'n') {
          // MySQL \n -> actual newline
          result.push('\n');
          i += 2;
        } else if (next === 'r') {
          // MySQL \r -> skip
          i += 2;
        } else if (next === 't') {
          result.push('\t');
          i += 2;
        } else {
          // Unknown escape, keep as-is
          result.push(chars[i]);
          i++;
        }
      } else if (chars[i] === "'" && i + 1 < chars.length && chars[i + 1] === "'") {
        // Already SQLite-escaped quote, pass through
        result.push("'", "'");
        i += 2;
      } else if (chars[i] === "'") {
        // End of string
        inString = false;
        result.push(chars[i]);
        i++;
      } else {
        result.push(chars[i]);
        i++;
      }
    }
  }

  output += result.join('') + '\n\n';
}

fs.writeFileSync(outputFile, output, 'utf8');

// Count records
const eventsCount = (output.match(/INSERT INTO events/g) || []).length;
const prayersCount = (output.match(/INSERT INTO prayers/g) || []).length;

// Count individual value rows (lines starting with '(')
const valueRows = output.split('\n').filter(l => l.trimStart().startsWith('(')).length;

console.log(`✅ Generated: data/d1-import.sql`);
console.log(`   ${eventsCount} Events INSERT statements`);
console.log(`   ${prayersCount} Prayers INSERT statements`);
console.log(`   ${valueRows} total value rows`);
console.log(`   File size: ${(Buffer.byteLength(output) / 1024).toFixed(1)} KB`);
