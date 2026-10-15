import { jwtVerify } from 'jose';

/**
 * Verify JWT from Authorization header.
 * Returns the user payload or throws a Response with 401/403.
 */
export async function requireAuth(request, env) {
  const authHeader = request.headers.get('Authorization');
  const token = authHeader?.startsWith('Bearer ') ? authHeader.slice(7) : null;

  if (!token) {
    throw new Response(JSON.stringify({ message: 'Access token required' }), {
      status: 401,
      headers: { 'Content-Type': 'application/json' },
    });
  }

  try {
    const secret = new TextEncoder().encode(env.JWT_SECRET);
    const { payload } = await jwtVerify(token, secret);
    return payload;
  } catch {
    throw new Response(JSON.stringify({ message: 'Invalid or expired token' }), {
      status: 403,
      headers: { 'Content-Type': 'application/json' },
    });
  }
}
