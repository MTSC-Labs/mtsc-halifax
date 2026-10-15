import { EVENT_COLUMNS } from '../../_db.js';

export async function onRequestGet(context) {
  const url = new URL(context.request.url);
  const date = url.searchParams.get('date');

  if (!date) {
    return Response.json({ message: 'Date parameter is required' }, { status: 400 });
  }

  const { results } = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events
     WHERE event_date >= ? AND event_date < ?
     ORDER BY event_date ASC`
  ).bind(date + 'T00:00:00.000Z', date + 'T23:59:59.999Z').all();

  return Response.json(results);
}
