# Data Dictionary: Telecom Customer Support Operations Analysis

| Column | Description | Data Type | Example | Business Use |
| :--- | :--- | :--- | :--- | :--- |
| `ticket_id` | Unique identifier assigned to each customer support request | STRING | `TCK-984021` | Tracks individual workload and links refunds directly to specific support cases. (Q11) |
| `customer_id` | Unique identifier for the customer submitting the ticket | STRING | `CUST-44109` | Connects ticket records to broader account histories and customer behavior. |
| `customer_segment` | Account tier or customer classification level | STRING | `Enterprise` | Identifies which customer groups (e.g., Enterprise vs Consumer) contact support most often. (Q9) |
| `region` | Geographic territory or location associated with the customer | STRING | `North America` | Pinpoints geographic regions generating the highest total ticket volumes. (Q10) |
| `product_id` | Specific plan, hardware, or service tied to the request | STRING | `PROD-5G-UNL` | Tracks performance and defect rates for specific telecom products. (Q6, Q7) |
| `product_category` | Broad class of service offered by the telecom provider | STRING | `Mobile` | Used in multi-variable workload analysis across channels and issue types. (Q6, Q14) |
| `issue_category` | Primary root topic or cause driving the support ticket | STRING | `Network Outage` | Highlights common pain points, highest refund costs, and frequent reopens. (Q8, Q12, Q13, Q14) |
| `support_channel` | Communication channel used by the customer to contact support | STRING | `Live Chat` | Measures channel speed, SLA performance, FCR rates, and overall workload. (Q1, Q4, Q14) |
| `priority` | Urgency rating assigned to the ticket upon creation | STRING | `Critical` | Isolates priority levels that cause operational backlogs and bottlenecks. (Q3) |
| `created_at` | Exact date and time when the ticket was logged | TIMESTAMP | `2026-03-15 08:30:00` | Calculates resolution durations and tracks volume trends over time. (Q1, Q15) |
| `first_response_at` | Date and time when an agent sent the initial response | TIMESTAMP | `2026-03-15 08:42:15` | Measures initial response speed and queue delay across channels. |
| `resolved_at` | Date and time when the ticket was marked resolved | TIMESTAMP | `2026-03-15 10:15:00` | Marks completion time for calculating SLAs and total resolution duration. (Q1, Q2) |
| `resolution_time_hours` | Total elapsed time from ticket creation to resolution | FLOAT | `1.75` | Used to find channels with long resolution times and evaluate agent speed. (Q1, Q5) |
| `sla_target_hours` | Max allowed resolution time (in hours) defined by priority | INTEGER | `4` | Sets the operational threshold required to evaluate SLA compliance. (Q2) |
| `sla_met_flag` | Indicates whether the ticket met its resolution time goal | BOOLEAN | `1` | Calculates the exact percentage of tickets resolved within SLA targets. (Q2) |
| `first_contact_resolved` | Indicates if the issue was solved in a single interaction | BOOLEAN | `1` | Identifies which contact channels achieve the highest FCR rates. (Q4) |
| `is_reopened` | Indicates if the ticket was reopened within 30 days of closure | BOOLEAN | `0` | Evaluates 30-day reopen rates across agents, products, and issue types. (Q5, Q7, Q13) |
| `reopen_count` | Total number of times a ticket was reopened during its lifespan | INTEGER | `0` | Measures repeated customer friction and identifies persistent issues. (Q13) |
| `assigned_agent_id` | Unique identifier for the agent who handled the case | STRING | `AGT-302` | Tracks agent resolution speed alongside 30-day ticket reopen rates. (Q5) |
| `refund_amount` | Direct dollar credit or compensation issued to the customer | DECIMAL(10,2) | `45.50` | Uncovers tickets and issue categories driving the highest refund costs. (Q11, Q12) |
| `ticket_status` | Current stage of the ticket in the support pipeline | STRING | `Closed` | Identifies unresolved or active tickets contributing to support backlog. (Q3) |
| `csat_score` | Post-resolution satisfaction score rated by the customer (1–5) | INTEGER | `5` | Monitors satisfaction alongside resolution metrics to find process gaps. (Q15) |
