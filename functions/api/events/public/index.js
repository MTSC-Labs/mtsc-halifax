import { EVENT_COLUMNS } from '../../_db.js';

export async function onRequestGet(context) {
  const { results } = await context.env.DB.prepare(
    `SELECT ${EVENT_COLUMNS} FROM events ORDER BY created_at DESC`
  ).all();
  return Response.json(results);
}
