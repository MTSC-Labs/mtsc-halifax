/**
 * Shared D1 query helpers for MTSC Halifax.
 * Maps snake_case D1 columns to camelCase for frontend compatibility.
 */

export const EVENT_COLUMNS = `
  id, title, url, content,
  event_date AS eventDate,
  is_featured AS isFeatured,
  created_at AS createdAt,
  updated_at AS updatedAt
`;

export const PRAYER_COLUMNS = `
  id,
  first_name AS firstName,
  last_name AS lastName,
  prayer_request AS prayerRequest,
  is_approved AS isApproved,
  created_at AS createdAt,
  updated_at AS updatedAt
`;
