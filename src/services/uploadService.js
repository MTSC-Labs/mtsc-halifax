import api from '../utils/api';

/**
 * Resolves an upload path or legacy Hostinger URL to a clean relative path (e.g. /uploads/file.webp).
 * This ensures all media is served directly from the Cloudflare R2 bucket.
 */
export const resolveUploadUrl = (path) => {
  if (!path || typeof path !== 'string') return path || '';

  // Strip legacy Hostinger domain
  let clean = path.replace(/^https?:\/\/mediumpurple-giraffe-353804\.hostingersite\.com/i, '');

  // Strip current domain if absolute
  clean = clean.replace(/^https?:\/\/(?:www\.)?missiontoseafarershalifax\.ca/i, '');

  // If path is an external URL (e.g. CMS, Unsplash, external media), leave as-is
  if (clean.startsWith('http://') || clean.startsWith('https://')) {
    return clean;
  }

  // Normalize /api/uploads/ to /uploads/
  if (clean.startsWith('/api/uploads/')) {
    clean = clean.replace('/api/uploads/', '/uploads/');
  }

  // Ensure leading slash for relative uploads
  if (clean.startsWith('uploads/')) {
    clean = `/${clean}`;
  }

  return clean;
};

/**
 * Prepares HTML content from the DB for the Tiptap editor.
 * Cleans any legacy Hostinger domains or absolute URLs, keeping clean relative /uploads/ paths.
 */
export const prepareContentForEditor = (htmlContent) => {
  if (!htmlContent || typeof htmlContent !== 'string') return htmlContent;

  return htmlContent
    // Replace Hostinger URLs in src or href
    .replace(/(src|href)=(["']|&quot;)https?:\/\/mediumpurple-giraffe-353804\.hostingersite\.com\/?(?:api\/)?(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Replace production domain
    .replace(/(src|href)=(["']|&quot;)https?:\/\/(?:www\.)?missiontoseafarershalifax\.ca\/?(?:api\/)?(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Normalize /api/uploads/ to /uploads/
    .replace(/(src|href)=(["']|&quot;)\/api\/(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Ensure leading slash on uploads/
    .replace(/(src|href)=(["']|&quot;)(?!https?:\/\/|\/)(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2');
};

/**
 * Prepares HTML content from the editor before saving to the DB.
 * Strips any absolute domain prefixes to ensure DB only stores relative paths (e.g. /uploads/image.webp).
 */
export const prepareContentForSave = (htmlContent) => {
  if (!htmlContent || typeof htmlContent !== 'string') return htmlContent;

  return htmlContent
    // Strip Hostinger domain
    .replace(/(src|href)=(["']|&quot;)https?:\/\/mediumpurple-giraffe-353804\.hostingersite\.com\/?(?:api\/)?(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Strip production domain
    .replace(/(src|href)=(["']|&quot;)https?:\/\/(?:www\.)?missiontoseafarershalifax\.ca\/?(?:api\/)?(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Strip localhost
    .replace(/(src|href)=(["']|&quot;)https?:\/\/localhost(?::\d+)?\/?(?:api\/)?(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Normalize /api/uploads/ to /uploads/
    .replace(/(src|href)=(["']|&quot;)\/api\/(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2')
    // Ensure leading slash on uploads/
    .replace(/(src|href)=(["']|&quot;)(?!https?:\/\/|\/)(uploads\/[^"'&]+)\2/gi, '$1=$2/$3$2');
};

export const uploadService = {
  uploadFile: async (file) => {
    const formData = new FormData();
    formData.append('file', file);

    // Do NOT set Content-Type manually - axios sets it with the correct boundary
    const response = await api.post('/upload', formData);

    // Return the clean relative path (e.g. /uploads/filename.webp)
    const rawUrl = response.data.url || `/uploads/${response.data.filename}`;
    const cleanUrl = resolveUploadUrl(rawUrl);

    return {
      ...response.data,
      url: cleanUrl,
    };
  },

  deleteFile: async (filename) => {
    await api.delete(`/upload/${filename}`);
  },
};
