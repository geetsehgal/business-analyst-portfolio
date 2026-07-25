-- Schema Definition: Telecom Customer Service & Support Intelligence Database

-- 1. Region Table
CREATE TABLE regions (
    region_id VARCHAR(50) PRIMARY KEY,
    region_name VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

-- 2. Customer Table
CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_name VARCHAR(150) NOT NULL,
    customer_segment VARCHAR(50) NOT NULL, -- e.g., Enterprise, Consumer, SMB
    region_id VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);

-- 3. Agent Table
CREATE TABLE agents (
    agent_id VARCHAR(50) PRIMARY KEY,
    agent_name VARCHAR(150) NOT NULL,
    team_name VARCHAR(100) NOT NULL,
    tier_level VARCHAR(50) NOT NULL
);

-- 4. Product Category Table
CREATE TABLE product_categories (
    category_id VARCHAR(50) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- 5. Product Table
CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES product_categories(category_id)
);

-- 6. Issue Category Table
CREATE TABLE issue_categories (
    issue_category_id VARCHAR(50) PRIMARY KEY,
    issue_category_name VARCHAR(100) NOT NULL
);

-- 7. Channel Table
CREATE TABLE channels (
    channel_id VARCHAR(50) PRIMARY KEY,
    channel_name VARCHAR(50) NOT NULL, -- e.g., Live Chat, Phone, Email
    is_digital BOOLEAN DEFAULT TRUE
);

-- 8. Priority Table
CREATE TABLE priorities (
    priority_id VARCHAR(50) PRIMARY KEY,
    priority_name VARCHAR(50) NOT NULL, -- Low, Medium, High, Critical
    sla_target_hours INT NOT NULL
);

-- 9. Status Table
CREATE TABLE statuses (
    status_id VARCHAR(50) PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL, -- Open, Pending, Resolved, Closed
    is_active BOOLEAN DEFAULT TRUE
);

-- 10. Core Fact Table: Ticket
CREATE TABLE tickets (
    ticket_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    assigned_agent_id VARCHAR(50),
    product_id VARCHAR(50) NOT NULL,
    issue_category_id VARCHAR(50) NOT NULL,
    channel_id VARCHAR(50) NOT NULL,
    priority_id VARCHAR(50) NOT NULL,
    status_id VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    first_response_at TIMESTAMP,
    resolved_at TIMESTAMP,
    resolution_time_hours DECIMAL(10, 2),
    sla_target_hours INT NOT NULL,
    sla_met_flag BOOLEAN DEFAULT FALSE,
    first_contact_resolved BOOLEAN DEFAULT FALSE,
    is_reopened BOOLEAN DEFAULT FALSE,
    reopen_count INT DEFAULT 0,
    refund_amount DECIMAL(10, 2) DEFAULT 0.00,
    csat_score INT CHECK (csat_score BETWEEN 1 AND 5),
    
    -- Foreign Key Constraints
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (assigned_agent_id) REFERENCES agents(agent_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (issue_category_id) REFERENCES issue_categories(issue_category_id),
    FOREIGN KEY (channel_id) REFERENCES channels(channel_id),
    FOREIGN KEY (priority_id) REFERENCES priorities(priority_id),
    FOREIGN KEY (status_id) REFERENCES statuses(status_id)
);

-- Performance Indexes for Common Analytics Queries
CREATE INDEX idx_tickets_created_at ON tickets(created_at);
CREATE INDEX idx_tickets_channel ON tickets(channel_id);
CREATE INDEX idx_tickets_product ON tickets(product_id);
CREATE INDEX idx_tickets_agent ON tickets(assigned_agent_id);
