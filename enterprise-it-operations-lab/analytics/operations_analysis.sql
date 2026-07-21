-- Import CSVs into your SQL engine, then adapt date functions as needed.

-- 1. SLA attainment by category
SELECT category, COUNT(*) AS tickets, ROUND(100.0 * SUM(CASE WHEN sla_met = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS sla_pct, ROUND(AVG(resolution_hours),2) AS avg_resolution_hours
FROM service_tickets_2026 GROUP BY category ORDER BY tickets DESC;

-- 2. First-contact resolution and CSAT
SELECT assigned_group, ROUND(100.0 * SUM(CASE WHEN first_contact_resolution='Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS fcr_pct, ROUND(AVG(csat_score),2) AS avg_csat
FROM service_tickets_2026 GROUP BY assigned_group;

-- 3. Patch compliance
SELECT patch_cycle, ROUND(100.0 * SUM(CASE WHEN result='Installed' THEN 1 ELSE 0 END)/COUNT(*),2) AS compliance_pct
FROM patch_compliance GROUP BY patch_cycle ORDER BY patch_cycle;

-- 4. Backup success
SELECT backup_date, ROUND(100.0 * SUM(CASE WHEN status='Success' THEN 1 ELSE 0 END)/COUNT(*),2) AS success_pct
FROM backup_jobs GROUP BY backup_date ORDER BY backup_date;

-- 5. Cloud cost by provider and environment
SELECT provider, environment, ROUND(SUM(monthly_cost_usd),2) AS monthly_cost
FROM cloud_resource_inventory GROUP BY provider, environment ORDER BY monthly_cost DESC;

-- 6. Vulnerability SLA exposure
SELECT severity, sla_status, COUNT(*) AS findings FROM vulnerability_findings GROUP BY severity, sla_status;

-- 7. Change success rate
SELECT change_type, ROUND(100.0 * SUM(CASE WHEN outcome='Successful' THEN 1 ELSE 0 END)/COUNT(*),2) AS success_pct, SUM(CASE WHEN caused_incident='Yes' THEN 1 ELSE 0 END) AS caused_incidents
FROM change_records GROUP BY change_type;

-- 8. Major incident MTTR
SELECT service, COUNT(*) AS incidents, ROUND(AVG(duration_minutes),1) AS mttr_minutes, SUM(users_impacted) AS total_users_impacted
FROM major_incidents GROUP BY service ORDER BY mttr_minutes DESC;
