# Runbook 005: Print server recovery

## Trigger
Alert, ticket, failed job, or approved maintenance requiring print server recovery.

## Preconditions
Confirm authorization, impact, backup or rollback path, and communication owner.

## Steps
1. Capture current state and timestamps.
2. Check dependencies, logs, capacity, identity, networking, and recent changes.
3. Apply the documented remediation in the safest order.
4. Validate functionality, monitoring, and user impact.
5. Record commands, results, and follow-up actions.

## Rollback
Restore the prior configuration or service state if validation fails.
