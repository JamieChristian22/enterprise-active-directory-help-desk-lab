# Alert Catalog

| Alert | Threshold | Severity | Action |
|---|---:|---|---|
| CPU High | >85% 15m | High | Review process and scale |
| Disk High | >85% | High | Clean or expand |
| Health Check Failed | 2 consecutive | Critical | Invoke service runbook |
| Backup Failed | Any production failure | High | Retry and validate restore point |
| Certificate Expiry | <30 days | Medium | Renew certificate |
| Cost Anomaly | >20% daily variance | Medium | Investigate spend |
