# Major Incident INC-001

## Summary
A simulated production service experienced degraded availability. Cloud Operations declared an incident, established command, restored service, and documented prevention work.

## Timeline
- 09:00 Alert fired
- 09:05 Incident acknowledged
- 09:12 Scope confirmed
- 09:25 Mitigation applied
- 09:40 Service restored
- 10:15 Monitoring stabilized

## Root Cause
A configuration drift combined with insufficient capacity caused failed health checks.

## Corrective Actions
Add policy validation, capacity alarms, peer review, and automated post-deployment health checks.
