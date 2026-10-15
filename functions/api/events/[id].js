import { requireAuth } from '../_auth.js';
import { EVENT_COLUMNS } from '../_db.js';

export async function onRequestGet(context) {
  await requireAuth(context.request, context.env);
  const { id } = context.params;

  const event = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events WHERE id = ?`
  ).bind(id).first();

  if (!event) {
    return Response.json({ message: 'Event not found' }, { status: 404 });
  }
  return Response.json(event);
}

export async function onRequestPut(context) {
  await requireAuth(context.request, context.env);
  const { id } = context.params;
  const { title, url, content, eventDate, isFeatured } = await context.request.json();

  const event = await context.env.DB.prepare(
    'SELECT id FROM events WHERE id = ?'
  ).bind(id).first();

  if (!event) {
    return Response.json({ message: 'Event not found' }, { status: 404 });
  }
  if (!title) {
    return Response.json({ message: 'Title is required' }, { status: 400 });
  }

  const eventUrl = url || title
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-+|-+$/g, '');

  const duplicate = await context.env.DB.prepare(
    'SELECT id FROM events WHERE url = ? AND id != ?'
  ).bind(eventUrl, id).first();

  if (duplicate) {
    return Response.json({ message: 'Event URL already exists' }, { status: 400 });
  }

  const now = new Date().toISOString();
  await context.env.DB.prepare(
    `UPDATE events SET title = ?, url = ?, content = ?, event_date = ?, is_featured = ?, updated_at = ?
     WHERE id = ?`
  ).bind(title, eventUrl, content || null, eventDate || null, isFeatured ? 1 : 0, now, id).run();

  const updated = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events WHERE id = ?`
  ).bind(id).first();

  return Response.json(updated);
}

export async function onRequestDelete(context) {
  await requireAuth(context.request, context.env);
  const { id } = context.params;

  const event = await context.env.DB.prepare(
    'SELECT id FROM events WHERE id = ?'
  ).bind(id).first();

  if (!event) {
    return Response.json({ message: 'Event not found' }, { status: 404 });
  }

  await context.env.DB.prepare('DELETE FROM events WHERE id = ?').bind(id).run();
  return Response.json({ message: 'Event deleted successfully' });
}
