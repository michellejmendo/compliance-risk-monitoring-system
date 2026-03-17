-- 1. Control Coverage by Framework
SELECT framework,
       COUNT(*) AS total_controls
FROM controls
GROUP BY framework;

-- 2. Implementation Status Overview
SELECT status,
       COUNT(*) AS count
FROM control_status
GROUP BY status;

-- 3. High Risk Items (Risk Score = Likelihood × Impact)
SELECT risk_title,
       (likelihood * impact) AS risk_score
FROM risk_register
ORDER BY risk_score DESC;

-- 4. Controls Needing Review
SELECT c.control_name,
       cs.status,
       cs.last_review_date
FROM control_status cs
JOIN controls c ON cs.control_id = c.control_id
WHERE cs.status IN ('Needs Review','Not Started');
