# Business Questions

The following business questions define the analytical scope of this project. Each question is directly supported by one or more fields in the dataset and will be answered using SQL, Excel, and Looker Studio.

| ID | Business Question | Dataset Columns | Priority | Status |
|----|-------------------|-----------------|----------|--------|
| BQ-01 | Which support channels have the longest average resolution times? | channel, resolution_time_hours | High | Ready |
| BQ-02 | What percentage of tickets breach SLA targets, and which support channels account for the highest number of SLA breaches? | sla_breached, channel | High | Ready |
| BQ-03 | Which priority level experiences the highest escalation rate? | priority, escalated | High | Ready |
| BQ-04 | How do first response times and resolution times differ across support channels? | channel, first_response_time_hours, resolution_time_hours | High | Ready |
| BQ-05 | Which customer segments and subscription types experience the longest average resolution times? | customer_segment, subscription_type, resolution_time_hours | High | Ready |
| BQ-06 | Which products generate the highest number of support tickets? | product | High | Ready |
| BQ-07 | Which subscription types have the highest SLA breach rates? | subscription_type, sla_breached | Medium | Ready |
| BQ-08 | Which ticket categories occur most frequently across different products? | category, product | High | Ready |
| BQ-09 | Which customer segments contact support most frequently, and what are their preferred support channels? | customer_segment, channel | Medium | Ready |
| BQ-10 | Which geographic regions generate the highest ticket volume? | region | Medium | Ready |
| BQ-11 | Which payment methods are associated with the highest overall support ticket volume, customer satisfaction, and average resolution time? | payment_method, customer_satisfaction_score, resolution_time_hours | Medium | Ready |
| BQ-12 | Which subscription types account for the highest proportion of complex, long-resolution tickets? | subscription_type, issue_complexity_score, resolution_time_hours | High | Ready |
| BQ-13 | Which ticket categories yield the lowest average customer satisfaction scores? | category, customer_satisfaction_score | High | Ready |
| BQ-14 | Which combination of product, category, and support channel creates the highest overall support workload? | product, category, channel | High | Ready |
| BQ-15 | What trends over time indicate opportunities for operational process improvement? | ticket_created_date, ticket_resolved_date, issue_complexity_score, escalated | High | Ready |
| BQ-16 | Does customer tenure influence the number of previous support tickets or customer satisfaction? | customer_tenure_months, previous_tickets, customer_satisfaction_score | Medium | Ready |
| BQ-17 | Do specific operating systems or browsers experience higher ticket volumes or longer resolution times? | operating_system, browser, resolution_time_hours | Medium | Ready |
| BQ-18 | Does the customer's preferred contact time influence first response time, resolution time, or SLA compliance? | preferred_contact_time, first_response_time_hours, resolution_time_hours, sla_breached | Medium | Ready |

---

# Business Question Coverage

| Metric | Count |
|--------|------:|
| Total Business Questions | 18 |
| High Priority | 11 |
| Medium Priority | 7 |
| Low Priority | 0 |
| Ready for SQL Analysis | 18 |
| Requires Data Cleaning | To be determined during data profiling |
| Cannot Be Answered | 0 |

---

# Planned Analysis Order

1. Ticket Volume Analysis
2. Product Analysis
3. Category Analysis
4. SLA Performance Analysis
5. Resolution Time Analysis
6. First Response Time Analysis
7. Priority & Escalation Analysis
8. Channel Performance Analysis
9. Regional Analysis
10. Subscription Type Analysis
11. Customer Segment Analysis
12. Customer Satisfaction Analysis
13. Customer Tenure Analysis
14. Operating System & Browser Analysis
15. Payment Method Analysis
16. Preferred Contact Time Analysis
17. Trend Analysis
18. Executive Recommendations
