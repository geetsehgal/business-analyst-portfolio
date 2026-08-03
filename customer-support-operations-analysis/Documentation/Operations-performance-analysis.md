# Operations Performance Analysis

## Objective

Analyse operational performance across support channels, priorities, customer segments and subscription types to identify opportunities for improving service efficiency.

---

## Business Questions Covered

- BQ-01
- BQ-02
- BQ-03
- BQ-04
- BQ-05

---

## SQL File

SQL/01_Operations_Performance.sql

---

## Findings

### BQ-01

| Channel | Avg Resolution Hours |
| ------- | -------------------: |
| Email     |   120.67 |
| Social Media | 120.59 |
| Phone | 120.51 |
| Web Form | 120.50 |
| Chat | 120.46 |

## Insight 
Email channel has the highest average resolution time while has the lowest number of tickets per channel

---

### BQ-02

| Channel | total_tickets | breached_tickets | breach_percentage |
| ------ | --------  | --------- | ---------|
| Email | 39726 | 19919 | 50.14 |
| Social Media | 40038 | 20068 | 50.12 |
| Chat | 40073 | 20080 | 50.11 |
| Phone | 40073 | 19997 | 49.90 |
| Web Form | 40090 | 19997 | 49.84 | 

## Insight 
Email channel has the highest breach percentage while getting lowest number of tickets

---

### BQ-03

| Priority | total_ticket | escalated_tickets | escalation_rate |
| --- | ---- | ----- | ----- |
| Medium | 49854 | 25173 | 50.49 |
| Urgent | 50143 | 25193 | 50.24 |
| High | 50241 | 25220 | 50.20 |
| Low | 49762 | 24835 | 49.91 |

## Insight

---

### BQ-04

_To be completed after analysing query results._

---

### BQ-05

_To be completed after analysing query results._

---

## Business Impact

_To be completed after interpreting the findings._

---

## Recommendations

_To be completed after interpreting the findings._
