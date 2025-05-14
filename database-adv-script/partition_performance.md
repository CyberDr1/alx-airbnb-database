## Partitioning Performance Report

Partitioning the `bookings` table by `start_date` significantly improved the performance of date-range queries. 

Using `EXPLAIN ANALYZE`, the planner only scans the relevant partition instead of the whole table. This reduces I/O and speeds up queries targeting specific months or years.

Before partitioning, full table scans were required. After partitioning, only the relevant partition is scanned.
