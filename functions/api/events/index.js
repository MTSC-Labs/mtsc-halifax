import { requireAuth } from '../_auth.js';
import { EVENT_COLUMNS } from '../_db.js';

export async function onRequestGet(context) {
  await requireAuth(context.request, context.env);
  const { results } = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events ORDER BY created_at DESC`
  ).all();
  return Response.json(results);
}

export async function onRequestPost(context) {
  await requireAuth(context.request, context.env);
  const { title, url, content, eventDate, isFeatured } = await context.request.json();

  if (!title) {
    return Response.json({ message: 'Title is required' }, { status: 400 });
  }

  const eventUrl = url || title
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');

  const existing = await context.env.DB.prepare(
    'SELECT id FROM events WHERE url = ?'
  ).bind(eventUrl).first();

  if (existing) {
    return Response.json({ message: 'Event URL already exists' }, { status: 400 });
  }

  const now = new Date().toISOString();
  const { meta } = await context.env.DB.prepare(
    `INSERT INTO events (title, url, content, event_date, is_featured, created_at, updated_at)
     VALUES (?, ?, ?, ?, ?, ?, ?)`
  ).bind(title, eventUrl, content || null, eventDate || null, isFeatured ? 1 : 0, now, now).run();

  const event = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events WHERE id = ?`
  ).bind(meta.last_row_id).first();

  return Response.json(event, { status: 201 });
}
