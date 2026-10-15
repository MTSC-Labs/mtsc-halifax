#!/usr/bin/env node

/**
 * MTSC Halifax - Data Import Script (PLACEHOLDER)
 *
 * Will import CSV exports from the existing Hostinger MySQL database
 * into D1-compatible SQL INSERT statements.
 *
 * Usage (once implemented):
 *   node scripts/import-data.js
 *
 * Prerequisites:
 *   - Export events from Hostinger phpMyAdmin as data/events.csv
 *   - Export prayers from Hostinger phpMyAdmin as data/prayers.csv
 */

import { readFileSync, writeFileSync } from 'fs';
import { resolve, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const DATA_DIR = resolve(__dirname, '..', 'data');
const OUT_FILE = resolve(__dirname, '..', 'migrations', '0003_import_data.sql');

async function importEvents() {
  const csvPath = resolve(DATA_DIR, 'events.csv');

  // TODO: Read events.csv using a CSV parser (e.g. csv-parse)
  // TODO: For each row:
  //   - Map Sequelize camelCase columns to D1 snake_case:
  //       eventDate -> event_date
  //       isFeatured -> is_featured (boolean 1/0)
  //       createdAt -> created_at (ISO string)
  //       updatedAt -> updated_at (ISO string)
  //   - The 'content' field contains rich text / JSON from the editor
  //     Escape single quotes: content.replace(/'/g, "''")
  //   - Generate: INSERT INTO events (title, url, content, event_date, is_featured, created_at, updated_at) VALUES (...);

  console.log(`TODO: Read ${csvPath} and generate event INSERT statements`);
  return [];
}

async function importPrayers() {
  const csvPath = resolve(DATA_DIR, 'prayers.csv');

  // TODO: Read prayers.csv using a CSV parser
  // TODO: For each row:
  //   - Map columns:
  //       firstName -> first_name
  //       lastName -> last_name
  //       prayerRequest -> prayer_request
  //       isApproved -> is_approved (boolean 1/0)
  //       createdAt -> created_at
  //       updatedAt -> updated_at
  //   - Escape single quotes in prayer_request
  //   - Generate: INSERT INTO prayers (first_name, last_name, prayer_request, is_approved, created_at, updated_at) VALUES (...);

  console.log(`TODO: Read ${csvPath} and generate prayer INSERT statements`);
  return [];
}

async function main() {
  console.log('MTSC Halifax Data Import (PLACEHOLDER)');
  console.log('=======================================\n');
  console.log('This script is a placeholder. To use it:\n');
  console.log('1. Export events table from Hostinger phpMyAdmin as CSV -> data/events.csv');
  console.log('2. Export prayers table from Hostinger phpMyAdmin as CSV -> data/prayers.csv');
  console.log('3. Install csv-parse: npm install csv-parse');
  console.log('4. Implement the TODO sections in this script');
  console.log('5. Run: node scripts/import-data.js');
  console.log(`6. Apply generated SQL: wrangler d1 execute mtsc-halifax-db --file=${OUT_FILE}\n`);

  const eventSql = await importEvents();
  const prayerSql = await importPrayers();

  // TODO: Combine and write to OUT_FILE
  // const allSql = [
  //   '-- MTSC Halifax Data Import',
  //   `-- Generated ${new Date().toISOString()}`,
  //   '',
  //   '-- Events',
  //   ...eventSql,
  //   '',
  //   '-- Prayers',
  //   ...prayerSql,
  // ].join('\n');
  // writeFileSync(OUT_FILE, allSql, 'utf-8');
  // console.log(`\nImport SQL written to: ${OUT_FILE}`);
}

main().catch((err) => {
  console.error('Error importing data:', err);
  process.exit(1);
});
