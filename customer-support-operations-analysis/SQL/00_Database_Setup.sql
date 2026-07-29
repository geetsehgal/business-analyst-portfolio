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

/*
===========================================================
DATA VALIDATION
===========================================================
*/

-----------------------------------------------------------
-- Total Records
-----------------------------------------------------------

SELECT COUNT(*) AS total_records
FROM tickets;

-----------------------------------------------------------
-- Duplicate Ticket IDs
-----------------------------------------------------------

SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT ticket_id) AS unique_ticket_ids
FROM tickets;

-----------------------------------------------------------
-- Duplicate Records
-----------------------------------------------------------

SELECT
    ticket_id,
    COUNT(*)
FROM tickets
GROUP BY ticket_id
HAVING COUNT(*) > 1;
