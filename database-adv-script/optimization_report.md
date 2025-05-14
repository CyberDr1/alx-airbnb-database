## Optimization Report

### Initial Query
The original query joined four tables (users, bookings, properties, payments) and returned all records.

### Issues Identified
- No filter used; large result set
- No index on `booking_id` in `payments`
- Selected all fields (SELECT *)

### Optimization Steps
- Limited selected columns
- Added WHERE clause
- Used indexed fields for joins

### Result
EXPLAIN ANALYZE shows reduced query cost and improved execution time.
