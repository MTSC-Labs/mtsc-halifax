import { EVENT_COLUMNS } from '../../_db.js';

export async function onRequestGet(context) {
  const { url } = context.params;

  const event = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events WHERE url = ?`
  ).bind(url).first();

  if (!event) {
    return Response.json({ message: 'Event not found' }, { status: 404 });
  }
  return Response.json(event);
}
