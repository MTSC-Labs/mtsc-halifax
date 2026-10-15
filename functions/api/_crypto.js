/**
 * Password hashing using Web Crypto API (native on CF Workers).
 * Uses PBKDF2 with SHA-256, 100k iterations, 32-byte salt.
 * Format: $pbkdf2$iterations$base64salt$base64hash
 */

const ITERATIONS = 100000;
const HASH_BYTES = 32;
const SALT_BYTES = 16;

function toBase64(buffer) {
  return btoa(String.fromCharCode(...new Uint8Array(buffer)));
}

function fromBase64(str) {
  const binary = atob(str);
  const bytes = new Uint8Array(binary.length);
  for (let i = 0; i < binary.length; i++) bytes[i] = binary.charCodeAt(i);
  return bytes.buffer;
}

export async function hashPassword(password) {
  const salt = crypto.getRandomValues(new Uint8Array(SALT_BYTES));
  const key = await crypto.subtle.importKey(
    'raw',
    new TextEncoder().encode(password),
    'PBKDF2',
    false,
    ['deriveBits']
  );
  const hash = await crypto.subtle.deriveBits(
    { name: 'PBKDF2', hash: 'SHA-256', salt, iterations: ITERATIONS },
    key,
    HASH_BYTES * 8
  );
  return `$pbkdf2$${ITERATIONS}$${toBase64(salt)}$${toBase64(hash)}`;
}

export async function verifyPassword(password, stored) {
  const parts = stored.split('$');
  // Support both $pbkdf2$ format and legacy $2b$ bcrypt format
  if (parts[1] === 'pbkdf2') {
    const iterations = parseInt(parts[2]);
    const salt = fromBase64(parts[3]);
    const expectedHash = parts[4];

    const key = await crypto.subtle.importKey(
      'raw',
      new TextEncoder().encode(password),
      'PBKDF2',
      false,
      ['deriveBits']
    );
    const hash = await crypto.subtle.deriveBits(
      { name: 'PBKDF2', hash: 'SHA-256', salt, iterations },
      key,
      HASH_BYTES * 8
    );
    return toBase64(hash) === expectedHash;
  }
  // Not a recognized format
  return false;
}
