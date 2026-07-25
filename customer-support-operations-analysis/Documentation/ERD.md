Entity-Relationship Architecture: Schema Details
1. Customer
Attributes: customer_id, customer_name, customer_segment, region_id, created_at

Primary Key: customer_id

Possible Relationships:

1 to Many (1:N) with Ticket: One customer can submit multiple support tickets.

Many to 1 (N:1) with Region: Multiple customers belong to a single geographic region.

2. Ticket
Attributes: ticket_id, customer_id, assigned_agent_id, product_id, issue_category_id, channel_id, priority_id, status_id, created_at, first_response_at, resolved_at, resolution_time_hours, sla_target_hours, sla_met_flag, first_contact_resolved, is_reopened, reopen_count, refund_amount, csat_score

Primary Key: ticket_id

Possible Relationships:

Many to 1 (N:1) with Customer: Many tickets can belong to a single customer.

Many to 1 (N:1) with Agent: Many tickets are assigned to one support agent.

Many to 1 (N:1) with Product: Many tickets relate to a specific telecom product or service.

Many to 1 (N:1) with Channel: Many tickets are received through a single support channel.

Many to 1 (N:1) with Priority: Many tickets share the same urgency/priority level.

Many to 1 (N:1) with Status: Many tickets share the same workflow status state.

3. Agent
Attributes: agent_id, agent_name, team_name, tier_level

Primary Key: agent_id

Possible Relationships:

1 to Many (1:N) with Ticket: One agent handles and resolves many tickets over time.

4. Product
Attributes: product_id, product_name, product_category_id

Primary Key: product_id

Possible Relationships:

1 to Many (1:N) with Ticket: One product can generate many support tickets.

Many to 1 (N:1) with Product Category: Many products belong to a single high-level category (e.g., Mobile, Broadband).

5. Region
Attributes: region_id, region_name, country

Primary Key: region_id

Possible Relationships:

1 to Many (1:N) with Customer: One region encompasses many customer accounts.

6. Channel
Attributes: channel_id, channel_name, is_digital

Primary Key: channel_id

Possible Relationships:

1 to Many (1:N) with Ticket: One channel routes many incoming support tickets.

7. Priority
Attributes: priority_id, priority_name, sla_target_hours

Primary Key: priority_id

Possible Relationships:

1 to Many (1:N) with Ticket: One priority level applies to many incoming tickets.

8. Status
Attributes: status_id, status_name, is_active

Primary Key: status_id

Possible Relationships:

1 to Many (1:N) with Ticket: One status state (e.g., Open, Closed) applies to many tickets.
