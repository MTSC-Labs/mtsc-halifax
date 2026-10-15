export async function onRequestGet(context) {
  let { filename } = context.params;

  // Decode URL-encoded filenames (e.g. %20 -> space)
  try {
    filename = decodeURIComponent(filename);
  } catch {
    // Already decoded or invalid encoding — use as-is
  }

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
  headers.set('Access-Control-Allow-Origin', '*');

  return new Response(obj.body, { headers });
}
