#!/usr/bin/env node

/**
 * MTSC Halifax - Upload Migration Script (PLACEHOLDER)
 *
 * Will migrate files from the Hostinger uploads/ directory to
 * Cloudflare R2 bucket 'mtsc-halifax-uploads', then rewrite
 * image URLs in event content.
 *
 * Usage (once implemented):
 *   node scripts/migrate-uploads.js
 *
 * Prerequisites:
 *   - Download uploads/ directory from Hostinger via FTP/SFTP
 *   - Place at: ./uploads/ (project root)
 *   - Configure wrangler.toml with R2 bucket binding
 *   - Run data import first (events must exist in D1)
 */

import { readdirSync, readFileSync, writeFileSync } from 'fs';
import { resolve, dirname, extname, basename } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));
const UPLOADS_DIR = resolve(__dirname, '..', 'uploads');
const R2_BUCKET = 'mtsc-halifax-uploads';
const URL_MAP_FILE = resolve(__dirname, '..', 'data', 'url-mapping.json');

// TODO: Hostinger base URL for uploads (check existing event content for pattern)
const OLD_BASE_URL = 'https://mtschalifax.com/uploads'; // adjust after inspecting data

async function scanUploads() {
  // TODO: Recursively read all files from uploads/ directory
  // TODO: Build a list of { localPath, relativePath, mimeType, size }
  // TODO: Filter out non-image/non-document files if desired

  console.log(`TODO: Scan ${UPLOADS_DIR} for files to migrate`);
  return [];
}

async function uploadToR2(files) {
  // TODO: For each file:
  //   - Read file content
  //   - Upload to R2 using wrangler CLI:
  //       wrangler r2 object put mtsc-halifax-uploads/<key> --file=<path>
  //   - Or use the R2 API directly via fetch with CF API token
  //   - Record the new R2 public URL
  //   - Build URL mapping: { oldUrl: newR2Url }

  console.log(`TODO: Upload ${files.length} files to R2 bucket '${R2_BUCKET}'`);
  return {};
}

async function rewriteEventUrls(urlMapping) {
  // TODO: For each event in D1:
  //   - Read the 'content' field (rich text / JSON)
  //   - Search for old Hostinger upload URLs
  //   - Replace with new R2 URLs using the mapping
  //   - Generate UPDATE SQL statements
  //   - Write to migrations/0004_rewrite_urls.sql

  console.log('TODO: Scan event content and rewrite upload URLs');
  console.log('TODO: Generate UPDATE SQL for events with rewritten content');
}

async function main() {
  console.log('MTSC Halifax Upload Migration (PLACEHOLDER)');
  console.log('============================================\n');
  console.log('This script is a placeholder. To use it:\n');
  console.log('1. Download uploads/ directory from Hostinger via FTP/SFTP');
  console.log('2. Place at: ./uploads/ in project root');
  console.log('3. Inspect event content to find the old upload URL pattern');
  console.log(`4. Update OLD_BASE_URL in this script (currently: ${OLD_BASE_URL})`);
  console.log('5. Run data import first: node scripts/import-data.js');
  console.log('6. Implement the TODO sections in this script');
  console.log('7. Run: node scripts/migrate-uploads.js');
  console.log(`8. Apply URL rewrite SQL: wrangler d1 execute mtsc-halifax-db --file=migrations/0004_rewrite_urls.sql\n`);

  const files = await scanUploads();
  const urlMapping = await uploadToR2(files);

  // TODO: Save URL mapping for reference
  // writeFileSync(URL_MAP_FILE, JSON.stringify(urlMapping, null, 2), 'utf-8');
  // console.log(`URL mapping saved to: ${URL_MAP_FILE}`);

  await rewriteEventUrls(urlMapping);
}

main().catch((err) => {
  console.error('Error migrating uploads:', err);
  process.exit(1);
});
