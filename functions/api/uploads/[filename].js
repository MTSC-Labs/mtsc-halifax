export async function onRequestGet(context) {
  const { filename } = context.params;

  // Prevent path traversal
  if (filename.includes('..') || filename.includes('/') || filename.includes('\\')) {
    return new Response('Invalid filename', { status: 400 });
  }

  const obj = await context.env.R2.get(filename);
  if (!obj) {
    return new Response('File not found', { status: 404 });
  }

  const headers = new Headers();
  headers.set('Content-Type', obj.httpMetadata?.contentType || 'application/octet-stream');
  headers.set('Cache-Control', 'public, max-age=31536000, immutable');

  // Allow cross-origin image/audio loading
  headers.set('Access-Control-Allow-Origin', '*');

  return new Response(obj.body, { headers });
}
