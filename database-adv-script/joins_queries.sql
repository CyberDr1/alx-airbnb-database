-- INNER JOIN: Bookings and the Users who made them
SELECT bookings.id AS booking_id, users.name AS user_name, bookings.start_date, bookings.end_date
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- LEFT JOIN: Properties and their Reviews (include properties without reviews)
SELECT properties.name AS property_name, reviews.rating, reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id;

-- FULL OUTER JOIN: All Users and all Bookings (even unlinked)
-- Note: MySQL does NOT support FULL OUTER JOIN directly. Use UNION of LEFT and RIGHT JOIN
SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.start_date
FROM users
LEFT JOIN bookings ON users.id = bookings.user_id
UNION
SELECT users.id AS user_id, users.name, bookings.id AS booking_id, bookings.start_date
FROM users
RIGHT JOIN bookings ON users.id = bookings.user_id;
