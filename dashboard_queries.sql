-- Overall Risk Exposure Score
SELECT SUM(likelihood * impact) AS total_risk_exposure
FROM risk_register;

-- Percent of Controls Implemented
SELECT 
    ROUND(
        100.0 * SUM(CASE WHEN status = 'Implemented' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS implementation_percentage
FROM control_status;

-- Audit Activity Trend
SELECT action_date,
       COUNT(*) AS actions_per_day
FROM audit_logs
GROUP BY action_date
ORDER BY action_date;
