import { requireAuth } from '../_auth.js';

const ALLOWED_TYPES = new Set([
  'image/jpeg', 'image/png', 'image/webp', 'image/gif', 'image/svg+xml',
  'audio/mpeg', 'audio/mp3', 'audio/wav', 'audio/ogg', 'audio/mp4', 'audio/aac',
]);

const MAX_SIZE = 20 * 1024 * 1024; // 20MB

export async function onRequestPost(context) {
  await requireAuth(context.request, context.env);

  const formData = await context.request.formData();
  const file = formData.get('file');

  if (!file || !(file instanceof File)) {
    return Response.json({ message: 'No file uploaded' }, { status: 400 });
  }

  if (!ALLOWED_TYPES.has(file.type)) {
    return Response.json(
      { message: 'Invalid file type. Only images and audio files are allowed.' },
      { status: 400 }
    );
  }

  if (file.size > MAX_SIZE) {
    return Response.json(
      { message: 'File too large. Maximum size is 20MB.' },
      { status: 400 }
    );
  }

  // Generate UUID filename preserving original extension
  const ext = file.name.includes('.') ? '.' + file.name.split('.').pop().toLowerCase() : '';
  const uuid = crypto.randomUUID();
  const filename = `${uuid}${ext}`;

  // Store in R2
  await context.env.R2.put(filename, file.stream(), {
    httpMetadata: {
      contentType: file.type,
    },
    customMetadata: {
      originalName: file.name,
    },
  });

  // Serve via our uploads route: /api/uploads/<filename>
  const url = `/api/uploads/${filename}`;

  return Response.json({
    success: true,
    url,
    filename,
    originalName: file.name,
    size: file.size,
    mimetype: file.type,
  });
}
