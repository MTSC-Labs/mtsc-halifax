function getCorsHeaders(request, env) {
  const origin = request.headers.get('Origin') || '';
  const allowed = [env.FRONTEND_URL || '', 'http://localhost:5173'].filter(Boolean);

  if (allowed.includes(origin)) {
    return {
      'Access-Control-Allow-Origin': origin,
      'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
      'Access-Control-Allow-Headers': 'Content-Type, Authorization',
      'Access-Control-Max-Age': '86400',
    };
  }

  // No origin or not allowed — omit CORS headers (browser blocks)
  return {};
}

export async function onRequest(context) {
  const { request, env } = context;
  const corsHeaders = getCorsHeaders(request, env);

  // Handle preflight
  if (request.method === 'OPTIONS') {
    return new Response(null, { status: 204, headers: corsHeaders });
  }

  try {
    const response = await context.next();

    // Attach CORS headers to all responses
    const newHeaders = new Headers(response.headers);
    for (const [key, value] of Object.entries(corsHeaders)) {
      newHeaders.set(key, value);
    }

    return new Response(response.body, {
      status: response.status,
      statusText: response.statusText,
      headers: newHeaders,
    });
  } catch (err) {
    // If the handler threw a Response (e.g. from requireAuth), pass it through with CORS
    if (err instanceof Response) {
      const newHeaders = new Headers(err.headers);
      for (const [key, value] of Object.entries(corsHeaders)) {
        newHeaders.set(key, value);
      }
      return new Response(err.body, {
        status: err.status,
        headers: newHeaders,
      });
    }

    // Unexpected error
    console.error('Unhandled error:', err);
    return new Response(JSON.stringify({ message: 'Internal server error' }), {
      status: 500,
      headers: { 'Content-Type': 'application/json', ...corsHeaders },
    });
  }
}
