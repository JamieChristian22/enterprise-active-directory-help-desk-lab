# Disaster Recovery Exercise — 2026 Q2
## Scenario
Loss of the primary virtualization host and corruption of a file-server VM.
## Results
- Incident declared: 09:04
- Alternate host capacity confirmed: 09:11
- VM restored from immutable backup: 09:38
- File validation completed: 09:51
- Service restored: 09:56
- Measured RTO: 52 minutes against 60-minute target
- Measured RPO: 14 minutes against 30-minute target
## Improvements
Automate DNS validation, pre-stage recovery network mappings, and add quarterly application-owner restore testing.
