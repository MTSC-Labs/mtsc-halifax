import { SignJWT } from 'jose';
import { verifyPassword } from '../_crypto.js';

export async function onRequestPost(context) {
  const { request, env } = context;

  let body;
  try {
    body = await request.json();
  } catch {
    return Response.json({ message: 'Invalid JSON body' }, { status: 400 });
  }

  const { email, password } = body;

  if (!email || !password) {
    return Response.json({ message: 'Email and password are required' }, { status: 400 });
  }

  // Look up admin in D1
  const admin = await env.DB.prepare('SELECT * FROM admins WHERE email = ?').bind(email).first();

  if (!admin) {
    return Response.json({ message: 'Invalid credentials' }, { status: 401 });
  }

  // Verify password against stored PBKDF2 hash
  const valid = await verifyPassword(password, admin.password_hash);
  if (!valid) {
    return Response.json({ message: 'Invalid credentials' }, { status: 401 });
  }

  // Sign JWT with jose (Workers-compatible)
  const secret = new TextEncoder().encode(env.JWT_SECRET);
  const token = await new SignJWT({ email: admin.email, role: admin.role || 'admin' })
    .setProtectedHeader({ alg: 'HS256' })
    .setExpirationTime('24h')
    .sign(secret);

  return Response.json({
    token,
    message: 'Login successful',
    user: { email: admin.email, role: admin.role || 'admin' },
  });
}
