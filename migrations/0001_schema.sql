-- MTSC Halifax D1 Schema Migration
-- Tables: admins, events, prayers
-- Matches existing Sequelize models (Event.js, Prayer.js) + new DB-based auth

-- Admins table (DB-based auth, replaces env var ADMIN_EMAIL/ADMIN_PASSWORD)
CREATE TABLE IF NOT EXISTS admins (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  email TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL,
  role TEXT NOT NULL DEFAULT 'admin',
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);

-- Events table (matching existing Sequelize model: Event.js)
-- content is rich text / JSON from the editor
-- Sequelize uses camelCase (eventDate, isFeatured) but D1 uses snake_case
-- Pages Functions will map between the two
CREATE TABLE IF NOT EXISTS events (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT NOT NULL,
  url TEXT NOT NULL UNIQUE,
  content TEXT,
  event_date TEXT,
  is_featured INTEGER NOT NULL DEFAULT 0,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);

-- Prayers table (matching existing Sequelize model: Prayer.js)
CREATE TABLE IF NOT EXISTS prayers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  prayer_request TEXT NOT NULL,
  is_approved INTEGER NOT NULL DEFAULT 1,
  created_at TEXT NOT NULL DEFAULT (datetime('now')),
  updated_at TEXT NOT NULL DEFAULT (datetime('now'))
);
