-- Insert Users
INSERT INTO users (id, name, email) VALUES
(1, 'Alice Johnson', 'alice@example.com'),
(2, 'Bob Smith', 'bob@example.com');

-- Insert Properties
INSERT INTO properties (id, user_id, name, location, price_per_night) VALUES
(1, 1, 'Seaside Cottage', 'Cape Town', 120.00),
(2, 2, 'Mountain Cabin', 'Drakensberg', 85.00);

-- Insert Bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, total_price) VALUES
(1, 2, 1, '2025-06-01', '2025-06-05', 480.00),
(2, 1, 2, '2025-07-10', '2025-07-12', 170.00);

-- Insert Reviews
INSERT INTO reviews (id, booking_id, rating, comment) VALUES
(1, 1, 5, 'Amazing stay with ocean view!'),
(2, 2, 4, 'Cozy and peaceful!');
