
SELECT
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.name AS property_name,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;
EXPLAIN ANALYZE
SELECT
    bookings.id AS booking_id,
    users.name AS user_name,
    properties.name AS property_name,
    payments.amount,
    payments.status
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id
JOIN payments ON bookings.id = payments.booking_id;

-- Only select relevant fields and apply filter
SELECT
    b.id AS booking_id,
    u.name AS user_name,
    p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
WHERE p.city = 'Cape Town'
LIMIT 100;
