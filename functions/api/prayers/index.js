import { PRAYER_COLUMNS } from '../_db.js';

export async function onRequestPost(context) {
  const { firstName, lastName, prayerRequest } = await context.request.json();

  if (!firstName || !lastName || !prayerRequest) {
    return Response.json(
      { message: 'firstName, lastName, and prayerRequest are required' },
      { status: 400 }
    );
  }

  const now = new Date().toISOString();
  const { meta } = await context.env.DB.prepare(
    `INSERT INTO prayers (first_name, last_name, prayer_request, is_approved, created_at, updated_at)
     VALUES (?, ?, ?, 1, ?, ?)`
  ).bind(firstName, lastName, prayerRequest, now, now).run();

  const prayer = await context.env.DB.prepare(
    `SELECT ${PRAYER_COLUMNS} FROM prayers WHERE id = ?`
  ).bind(meta.last_row_id).first();

  return Response.json(prayer, { status: 201 });
}
