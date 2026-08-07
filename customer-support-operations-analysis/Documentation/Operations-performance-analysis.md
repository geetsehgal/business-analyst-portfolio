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

#### Insight 
<li>Email channel has the highest average resolution time while has the lowest number of tickets per channel</li>
<li>All channels have similar Average Resolution Hour ~2 hours</li>

---

### BQ-02

| Channel | total_tickets | breached_tickets | breach_percentage |
| ------ | --------  | --------- | ---------|
| Email | 39726 | 19919 | 50.14 | 
| Social Media | 40038 | 20068 | 50.12 |
| Chat | 40073 | 20080 | 50.11 | 
| Phone | 40073 | 19997 | 49.90 | 
| Web Form | 40090 | 19997 | 49.84 | 

#### Insight 
<li>Email channel has the highest breach percentage while getting lowest number of tickets</li>
<li>Web form has the highest breach volume and yet the lowest breach % </li>
<li>All channels have similar breach percentage ~50%</li>
<li>Highest Breach Rate: 50.14 % </li>
<li>Highest breach volume: 20093</li>

---

### BQ-03

| Priority | total_ticket | escalated_tickets | escalation_rate | 
| --- | ---- | ----- | ----- |
| Medium | 49854 | 25173 | 50.49 | 
| Urgent | 50143 | 25193 | 50.24 | 
| High | 50241 | 25220 | 50.20 | 
| Low | 49762 | 24835 | 49.91 | 

#### Insight
<p> <li>Low-priority tickets have the lowest escalation rate</li>
  <li>All priority levels have similar escalation rate ~50%</li> 
<li>High priority has the highest escalation volume</li></p>

----

### BQ-04

| channel | avg_first_response | avg_resolution |
| ------ | ----- | ------ |
| Email | 36.15 | 120.67 |
| Social Media | 36.43 | 120.59 |
| Phone | 36.33 | 120.51 |
| Web Form | 36.30 | 120.50 |
| Chat | 36.37 | 120.46 |

#### Insights
<p><li>Average resolution time for all channels is similar ~2 hours, while the average first response of social media is the highest, as it should be</li></p>

---

### BQ-05

| customer_segment | subscription_type | avg_resolution |
| ----- | ----- | ----- |
| Corporate | Premium | 120.97 |
| Individual | Premium | 120.97 |
| Corporate | Basic | 120.82 | 
| Individual | Free | 120.81 |
| Small Business | Enterprise | 120.70 |

#### Insights
<p><li> Both corporate and individual segment with premium subscription take the highest time to resolve </li>
<li> Individual with free subscription has lower average resolution time than corporate with basic subscription </li>
<li>Small business with enterprise subscription has the lowest average resolution time</li>
<li>Most all average resolution times are similar, regardless of the subscription type or segment ~2 hours</li></p>

---

## Business Impact

_To be completed after interpreting the findings._

---

## Recommendations

_To be completed after interpreting the findings._
