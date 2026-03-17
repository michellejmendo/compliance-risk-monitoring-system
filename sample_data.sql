-- Sample Markets
INSERT INTO markets VALUES
(1, 'United States', 'North America'),
(2, 'European Union', 'Europe'),
(3, 'Asia Pacific', 'APAC');

-- Sample Controls
INSERT INTO controls VALUES
(1, 'Access Control Policy', 'Security', 'SOC2'),
(2, 'Vendor Risk Review', 'Third Party Risk', 'SOC2'),
(3, 'Data Retention Policy', 'Data Governance', 'ISO27001'),
(4, 'Incident Response Plan', 'Security', 'Internal');

-- Control Status
INSERT INTO control_status VALUES
(1, 1, 1, 'Implemented', '2026-01-15'),
(2, 2, 1, 'In Progress', '2026-02-01'),
(3, 3, 2, 'Implemented', '2026-01-20'),
(4, 4, 3, 'Needs Review', '2025-12-10');

-- Risk Register
INSERT INTO risk_register VALUES
(1, 'Unauthorized Data Access', 'Security', 4, 5, 'In Progress'),
(2, 'Regulatory Filing Delay', 'Compliance', 3, 4, 'Mitigated'),
(3, 'Vendor Non-Compliance', 'Third Party', 3, 5, 'In Progress');

-- Audit Logs
INSERT INTO audit_logs VALUES
(1, 'Policy Update', 1, 'Michelle', '2026-02-10', 'Annual revision completed'),
(2, 'Control Review', 2, 'Michelle', '2026-02-12', 'Risk assessment performed');
