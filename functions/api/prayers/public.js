import { PRAYER_COLUMNS } from '../_db.js';

export async function onRequestGet(context) {
  const { results } = await context.env.DB.prepare(
    `SELECT ${PRAYER_COLUMNS} FROM prayers WHERE is_approved = 1 ORDER BY created_at DESC`
  ).all();
  return Response.json(results);
}
