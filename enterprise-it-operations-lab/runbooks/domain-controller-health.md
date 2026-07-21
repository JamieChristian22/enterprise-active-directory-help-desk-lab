# Runbook: Domain Controller Health

## Trigger
Authentication errors, replication alert, DNS failures, or daily health review.

## Procedure
1. Run `dcdiag /e /v` and save output.
2. Run `repadmin /replsummary` and `repadmin /showrepl`.
3. Verify SYSVOL and NETLOGON shares.
4. Confirm time source and offset with `w32tm /query /status`.
5. Review Directory Service, DNS Server, and System logs.
6. Validate DNS registration with `ipconfig /registerdns`.
7. If one DC is unhealthy, redirect operations to the healthy DC and investigate.

## Escalate
Escalate immediately for USN rollback, database corruption, widespread authentication failure, or both DCs unavailable.
