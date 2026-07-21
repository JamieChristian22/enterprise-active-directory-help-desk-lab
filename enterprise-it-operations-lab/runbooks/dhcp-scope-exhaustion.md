# Runbook: Dhcp Scope Exhaustion

## Purpose
Restore service safely and consistently during a **DHCP scope exhaustion** while preserving evidence and meeting incident, security, and change-control requirements.

## Trigger and ownership
- Trigger: monitoring alert, user report, security notification, or failed scheduled check
- Primary owner: IT Operations
- Escalation: Infrastructure, Cloud, Security, or vendor support based on the failing component

## Procedure
1. Open or link the incident and record start time, scope, severity, affected services, and reporter.
2. Confirm the alert using a second data source; avoid acting on a single unverified signal.
3. Review health, logs, dependencies, recent changes, capacity, identity, and network paths.
4. Contain impact. Use approved failover, service restart, rollback, access revocation, or isolation only when evidence supports it.
5. Communicate status at the cadence defined by severity.
6. Restore service and validate from the user, application, infrastructure, and monitoring perspectives.
7. Observe for 30 minutes or two monitoring intervals, whichever is longer.
8. Document cause, actions, commands, evidence, duration, and follow-up work.

## Safety controls
- Never delete logs or evidence.
- Use named privileged accounts and least privilege.
- Create an emergency change when production configuration is altered.
- Stop and escalate if indicators of compromise are present.

## Success criteria
The affected workflow succeeds, dependencies are healthy, alerts clear, error rates return to baseline, and no unauthorized configuration remains.

## Required ticket evidence
Timeline, impacted assets, log excerpts, commands, approver, change ID, validation results, communications, and prevention tasks.
