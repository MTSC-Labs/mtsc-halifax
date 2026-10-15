export async function onRequestGet(context) {
  try {
    const admin = await context.env.DB.prepare('SELECT email FROM admins LIMIT 1').first();
    return new Response(JSON.stringify({
      ok: true,
      db: admin ? 'connected' : 'empty',
      admin_email: admin?.email || null,
      jwt_secret_set: !!context.env.JWT_SECRET,
      r2_bound: !!context.env.R2,
    }), {
      headers: { 'Content-Type': 'application/json' }
    });
  } catch (err) {
    return new Response(JSON.stringify({
      ok: false,
      error: err.message,
      stack: err.stack,
    }), {
      status: 500,
      headers: { 'Content-Type': 'application/json' }
    });
  }
}
