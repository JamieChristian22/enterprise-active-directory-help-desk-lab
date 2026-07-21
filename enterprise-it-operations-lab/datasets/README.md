# Dataset Catalog and Data Dictionary

All records are synthetic and designed for portfolio analysis. Names, domains, identifiers, and infrastructure are fictional.

| Dataset | Rows | Purpose |
|---|---:|---|
| `backup_jobs.csv` | 1,080 | Backup success, restore testing, RPO, and failure analysis. |
| `change_records.csv` | 150 | Change success, rollback, risk, and incident-correlation analysis. |
| `cloud_resource_inventory.csv` | 180 | AWS/Azure resource, cost, tagging, monitoring, and exposure analysis. |
| `endpoint_assets.csv` | 300 | Endpoint asset lifecycle, encryption, compliance, warranty, and assignment analysis. |
| `infrastructure_metrics.csv` | 5,000 | CPU, memory, disk, availability, and alert trend analysis. |
| `major_incidents.csv` | 40 | Major-incident duration, impact, cause, and communication analysis. |
| `patch_compliance.csv` | 360 | Monthly server patch compliance and exception analysis. |
| `server_cmdb.csv` | 60 | Server inventory and configuration-management analysis. |
| `service_tickets_2026.csv` | 1,200 | SLA, CSAT, first-contact resolution, volume, and category analysis. |
| `users.csv` | 250 | Identity lifecycle, MFA, licensing, and stale-account analysis. |
| `vulnerability_findings.csv` | 600 | Vulnerability aging, severity, SLA, and remediation analysis. |

## Recommended Portfolio Analyses

- Service desk: ticket volume, SLA attainment, average resolution time, FCR, reopen rate, and CSAT by category.
- Infrastructure: capacity hotspots, alert frequency, availability, patch compliance, backup reliability, and restore-test coverage.
- Cloud operations: monthly cost by provider/environment, untagged resources, monitoring coverage, backup coverage, and exposure reviews.
- Security operations: vulnerability aging, overdue remediation, MFA gaps, stale accounts, encryption, and device compliance.
- ITIL operations: change success rate, emergency-change rate, incidents caused by change, MTTR, and user impact.
