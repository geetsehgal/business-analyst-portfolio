/*
===========================================================
Operations Performance Analysis

Business Questions Covered

BQ-01
BQ-02
BQ-03
BQ-04
BQ-05
===========================================================
*/

-----------------------------------------------------------
-- BQ-01
-- Which support channels have the longest average
-- resolution times?
-----------------------------------------------------------

SELECT
    channel,
    ROUND(AVG(resolution_time_hours),2) AS avg_resolution_hours
FROM tickets
GROUP BY channel
ORDER BY avg_resolution_hours DESC;

-----------------------------------------------------------
-- BQ-02
-- Which channels account for the highest SLA breach rate?
-----------------------------------------------------------

SELECT
    channel,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN sla_breached='Yes' THEN 1 ELSE 0 END) AS breached_tickets,
    ROUND(
        SUM(CASE WHEN sla_breached='Yes' THEN 1 ELSE 0 END)
        *100.0
        /COUNT(*),
        2
    ) AS breach_percentage
FROM tickets
GROUP BY channel
ORDER BY breach_percentage DESC;

-----------------------------------------------------------
-- BQ-03
-- Which priority level has the highest escalation rate?
-----------------------------------------------------------

SELECT
    priority,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN escalated='Yes' THEN 1 ELSE 0 END) AS escalated_tickets,
    ROUND(
        SUM(CASE WHEN escalated='Yes' THEN 1 ELSE 0 END)
        *100.0
        /COUNT(*),
        2
    ) AS escalation_rate
FROM tickets
GROUP BY priority
ORDER BY escalation_rate DESC;

-----------------------------------------------------------
-- BQ-04
-- Compare first response time and resolution time
-- across support channels.
-----------------------------------------------------------

SELECT
    channel,
    ROUND(AVG(first_response_time_hours),2) AS avg_first_response,
    ROUND(AVG(resolution_time_hours),2) AS avg_resolution
FROM tickets
GROUP BY channel
ORDER BY avg_resolution DESC;

-----------------------------------------------------------
-- BQ-05
-- Resolution time by customer segment and
-- subscription type.
-----------------------------------------------------------

SELECT
    customer_segment,
    subscription_type,
    ROUND(AVG(resolution_time_hours),2) AS avg_resolution
FROM tickets
GROUP BY
    customer_segment,
    subscription_type
ORDER BY avg_resolution DESC;
