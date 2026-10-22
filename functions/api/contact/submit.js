/**
 * Cloudflare Pages Function: POST /api/contact/submit
 * Handles contact form submissions with server-side Google reCAPTCHA v2 verification
 * and proxies the entry to Google Forms.
 */

export async function onRequestPost(context) {
  try {
    const { request, env } = context;
    const body = await request.json().catch(() => ({}));
    const { name, email, phone, interest, message, recaptchaToken } = body;

    // Field Validations
    const errors = [];
    if (!name || typeof name !== 'string' || !name.trim()) {
      errors.push({ field: 'name', message: 'Name is required' });
    }
    if (!email || typeof email !== 'string' || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.trim())) {
      errors.push({ field: 'email', message: 'Valid email is required' });
    }
    if (!message || typeof message !== 'string' || !message.trim()) {
      errors.push({ field: 'message', message: 'Message is required' });
    }
    if (!recaptchaToken) {
      errors.push({ field: 'recaptchaToken', message: 'reCAPTCHA verification is required' });
    }

    if (errors.length > 0) {
      return Response.json(
        {
          success: false,
          message: errors[0].message,
          errors,
        },
        { status: 400 }
      );
    }

    // 1. Verify reCAPTCHA token with Google Siteverify API
    const secretKey = env.RECAPTCHA_SECRET_KEY || '6Ldcf24tAAAAAKnIXZVMt0IdoBW5ajPDsSiVsP2h';
    const verifyUrl = `https://www.google.com/recaptcha/api/siteverify?secret=${secretKey}&response=${encodeURIComponent(recaptchaToken)}`;

    const captchaRes = await fetch(verifyUrl, { method: 'POST' });
    const captchaData = await captchaRes.json().catch(() => ({ success: false }));

    if (!captchaData.success) {
      return Response.json(
        {
          success: false,
          message: 'reCAPTCHA verification failed. Bot detected or invalid token.',
          errorCodes: captchaData['error-codes'] || [],
        },
        { status: 400 }
      );
    }

    // 2. Submit form data to Google Forms server-side
    const googleFormUrl =
      env.GOOGLE_FORM_URL ||
      'https://docs.google.com/forms/d/e/1FAIpQLSdDRLf8Fjde4Y-q1oUmoa_5JAbmAFp5TeG0RV3qjyVL3Aabhg/formResponse';

    const params = new URLSearchParams();
    params.append('entry.2050372848', name.trim());
    params.append('entry.608487628', email.trim());
    params.append('entry.278774456', (phone || '').trim());
    params.append('entry.1990273286', (interest || '').trim());
    params.append('entry.1454859148', message.trim());

    await fetch(googleFormUrl, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: params.toString(),
    });

    return Response.json(
      {
        success: true,
        message: 'Your inquiry has been successfully submitted.',
      },
      { status: 200 }
    );
  } catch (error) {
    console.error('Contact submission error:', error);
    return Response.json(
      {
        success: false,
        message: 'Internal server error while submitting contact form.',
      },
      { status: 500 }
    );
  }
}
