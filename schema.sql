-- Compliance & Risk Monitoring System
-- Simple relational model for governance tracking

CREATE TABLE markets (
    market_id INTEGER PRIMARY KEY,
    market_name TEXT NOT NULL,
    region TEXT NOT NULL
);

CREATE TABLE controls (
    control_id INTEGER PRIMARY KEY,
    control_name TEXT NOT NULL,
    control_category TEXT NOT NULL,
    framework TEXT NOT NULL -- e.g., SOC2, ISO27001, Internal
);

CREATE TABLE control_status (
    status_id INTEGER PRIMARY KEY,
    control_id INTEGER,
    market_id INTEGER,
    status TEXT CHECK(status IN ('Implemented','In Progress','Not Started','Needs Review')),
    last_review_date DATE,
    FOREIGN KEY (control_id) REFERENCES controls(control_id),
    FOREIGN KEY (market_id) REFERENCES markets(market_id)
);

CREATE TABLE risk_register (
    risk_id INTEGER PRIMARY KEY,
    risk_title TEXT NOT NULL,
    risk_category TEXT,
    likelihood INTEGER CHECK(likelihood BETWEEN 1 AND 5),
    impact INTEGER CHECK(impact BETWEEN 1 AND 5),
    mitigation_status TEXT
);

CREATE TABLE audit_logs (
    audit_id INTEGER PRIMARY KEY,
    action_type TEXT,
    related_control INTEGER,
    performed_by TEXT,
    action_date DATE,
    notes TEXT,
    FOREIGN KEY (related_control) REFERENCES controls(control_id)
);
