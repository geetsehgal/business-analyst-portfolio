# Dataset Overview: Customer Support Tickets Dataset

## Metadata

* **Dataset Name:** Customer Support Tickets Dataset
* **Domain:** Customer Support Operations
* **Industry:** Cross-industry / SaaS / Digital Products
* **Approximate Records:** ~200,000
* **Number of Columns:** 30
* **Dataset Source:** Kaggle

---

## Purpose

The **Customer Support Tickets Dataset** provides a highly granular, enterprise-level view of modern customer service operations across digital products and SaaS platforms. With approximately 200,000 records, the dataset captures the end-to-end lifecycle of customer support interactions—ranging from initial issue submission and intake channel routing to agent handling, time-to-resolution, operational SLA tracking, and post-resolution satisfaction scoring.

This dataset is uniquely suited for multi-dimensional business analytics because it pairs core operational metrics with detailed customer demographic and product usage attributes. Analysts can seamlessly evaluate queue bottlenecks, service-level agreement (SLA) breaches, first response rates, and ticket escalations alongside customer attributes such as subscription tiers, account tenure, region, and segment. This holistic perspective enables deep investigation into operational efficiency, product reliability, customer friction, and retention risk.

Furthermore, the inclusion of technical diagnostic metadata (such as operating systems, browsers, payment methods, and issue complexity scores) alongside performance metrics allows cross-functional teams—including Operations, Customer Experience (CX), Product Management, and Senior Leadership—to identify root causes of service delay and execute targeted process improvement initiatives.

---

## Columns & Schema

Below is the complete list of all 30 columns extracted from the dataset:

| # | Column Name | Expected Data Type | Description |
| :-: | :--- | :--- | :--- |
| 1 | `ticket_id` | STRING | Unique identifier for each support ticket |
| 2 | `customer_name` | STRING | Full name of the customer |
| 3 | `customer_email` | STRING | Contact email address of the customer |
| 4 | `product` | STRING | Specific product or service line associated with the ticket |
| 5 | `category` | STRING | High-level service or failure category |
| 6 | `issue_description` | STRING | Detailed description or transcript of the reported issue |
| 7 | `resolution_notes` | STRING | Notes logged by support regarding the resolution |
| 8 | `priority` | STRING | Priority/urgency level (e.g., Low, Medium, High, Critical) |
| 9 | `status` | STRING | Lifecycle state (e.g., Open, Pending, Resolved, Closed) |
| 10 | `channel` | STRING | Communication channel used (e.g., Phone, Email, Live Chat) |
| 11 | `region` | STRING | Geographic location/region of the customer |
| 12 | `customer_age` | INTEGER | Age of the customer |
| 13 | `customer_gender` | STRING | Gender of the customer |
| 14 | `subscription_type` | STRING | Active subscription tier or plan level |
| 15 | `customer_tenure_months` | INTEGER | Length of customer account lifetime in months |
| 16 | `previous_tickets` | INTEGER | Historical count of tickets submitted by the customer |
| 17 | `customer_satisfaction_score` | INTEGER / FLOAT | Post-resolution CSAT score (e.g., 1–5 scale) |
| 18 | `first_response_time_hours` | FLOAT | Hours elapsed between creation and initial response |
| 19 | `resolution_time_hours` | FLOAT | Total elapsed hours from ticket creation to resolution |
| 20 | `ticket_created_date` | TIMESTAMP | Date and time when the ticket was logged |
| 21 | `ticket_resolved_date` | TIMESTAMP | Date and time when the ticket was marked resolved |
| 22 | `escalated` | BOOLEAN | Indicates whether the ticket was escalated to higher tiers |
| 23 | `sla_breached` | BOOLEAN | Flag indicating whether resolution exceeded SLA target |
| 24 | `operating_system` | STRING | Customer OS or environment |
| 25 | `browser` | STRING | Customer browser used during issue occurrence |
| 26 | `payment_method` | STRING | Billing/payment method on file |
| 27 | `language` | STRING | Primary communication language of the customer |
| 28 | `preferred_contact_time` | STRING | Preferred timeframe for agent outreach |
| 29 | `issue_complexity_score` | INTEGER / FLOAT | Assessed rating of issue complexity |
| 30 | `customer_segment` | STRING | Business tier classification (e.g., SMB, Enterprise, Consumer) |
