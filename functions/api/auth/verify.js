import { requireAuth } from '../_auth.js';

export async function onRequestGet(context) {
  const user = await requireAuth(context.request, context.env);
  return Response.json({ valid: true, user });
}
