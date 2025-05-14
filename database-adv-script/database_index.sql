-- Create index on user_id in the User table for faster JOINs and filtering.
CREATE INDEX idx_user_id ON users(user_id);

-- Create index on email in the User table for faster lookup by email.
CREATE INDEX idx_email ON users(email);

-- Create index on booking_date in the Booking table for sorting and filtering bookings.
CREATE INDEX idx_booking_date ON bookings(booking_date);

-- Create index on user_id in the Booking table for faster JOIN with User table.
CREATE INDEX idx_booking_user_id ON bookings(user_id);

-- Create index on property_id in the Booking table for faster JOIN with Property table.
CREATE INDEX idx_booking_property_id ON bookings(property_id);

-- Create index on property_id in the Property table for fast JOINs.
CREATE INDEX idx_property_id ON properties(property_id);

-- Create index on city in the Property table to filter properties by city.
CREATE INDEX idx_property_city ON properties(city);
