const MIME_BY_EXT = {
  '.webp': 'image/webp',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.png': 'image/png',
  '.gif': 'image/gif',
  '.svg': 'image/svg+xml',
  '.avif': 'image/avif',
  '.mp4': 'video/mp4',
  '.webm': 'video/webm',
  '.mov': 'video/quicktime',
  '.mp3': 'audio/mpeg',
  '.wav': 'audio/wav',
  '.ogg': 'audio/ogg',
  '.pdf': 'application/pdf',
};

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

  const ext = filename.includes('.') ? '.' + filename.split('.').pop().toLowerCase() : '';
  const metaType = obj.httpMetadata?.contentType;
  const contentType = (metaType && metaType !== 'application/octet-stream')
    ? metaType
    : (MIME_BY_EXT[ext] || 'application/octet-stream');

  const headers = new Headers();
  headers.set('Content-Type', contentType);
  headers.set('Cache-Control', 'public, max-age=31536000, immutable');
  headers.set('Access-Control-Allow-Origin', '*');

  return new Response(obj.body, { headers });
}
