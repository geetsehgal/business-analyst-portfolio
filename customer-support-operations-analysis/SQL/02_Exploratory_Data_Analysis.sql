/*
===========================================================
Customer Support Operations Analysis

Exploratory Data Analysis (EDA)

Purpose:
Understand the structure, distribution and characteristics
of the dataset before answering business questions.

Author:
Geet Sehgal

Platform:
PostgreSQL (Neon)

===========================================================
*/

Query 1: Tickets Volume by products
SELECT
    product,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY product
ORDER BY total_tickets DESC;

Query 2: Ticket volume by category
SELECT
    category,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY category
ORDER BY total_tickets DESC;

Query 3: Ticket volume by region
SELECT
    region,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY region
ORDER BY total_tickets DESC;

Query 4: Ticket volume by support channel
SELECT
    channel,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY channel
ORDER BY total_tickets DESC;

Query 5: Ticket volume by status distribution
SELECT
    status,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY status
ORDER BY total_tickets DESC;

Query 6: Priority distribution
SELECT
    priority,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY priority
ORDER BY total_tickets DESC;

Query 7: Custoemr segment distribution
SELECT
    customer_segment,
    COUNT(*) AS total_customers
FROM tickets
GROUP BY customer_segment
ORDER BY total_customers DESC;

Query 8: Subscription type distribution
SELECT
    subscription_type,
    COUNT(*) AS total_customers
FROM tickets
GROUP BY subscription_type
ORDER BY total_customers DESC;

Query 9: Customer satisfaction summary
SELECT
    MIN(customer_satisfaction_score) AS minimum,
    MAX(customer_satisfaction_score) AS maximum,
    ROUND(AVG(customer_satisfaction_score),2) AS average
FROM tickets;

Query 10: Resolution time summary
SELECT
    MIN(resolution_time_hours) AS minimum,
    MAX(resolution_time_hours) AS maximum,
    ROUND(AVG(resolution_time_hours),2) AS average
FROM tickets;
