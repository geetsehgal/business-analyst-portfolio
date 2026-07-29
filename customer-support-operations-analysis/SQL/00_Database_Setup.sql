/*
===========================================================
Customer Support Operations Analysis
Database Setup

Platform : Neon PostgreSQL
Schema   : public
Table    : tickets

Dataset Source:
Customer Support Tickets Dataset (200,000 records)

Created For:
Business Analyst Portfolio Project
===========================================================
*/

-- Verify total records

SELECT COUNT(*) AS total_records
FROM tickets;

-- Verify columns

SELECT *
FROM tickets
LIMIT 5;
