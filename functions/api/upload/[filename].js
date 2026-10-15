import { requireAuth } from '../_auth.js';

export async function onRequestDelete(context) {
  await requireAuth(context.request, context.env);
  const { filename } = context.params;

  // Prevent path traversal
  if (filename.includes('..') || filename.includes('/') || filename.includes('\\')) {
    return Response.json({ message: 'Invalid filename' }, { status: 400 });
  }

  const obj = await context.env.R2.get(filename);
  if (!obj) {
    return Response.json({ message: 'File not found' }, { status: 404 });
  }

  await context.env.R2.delete(filename);
  return Response.json({ success: true, message: 'File deleted' });
}
