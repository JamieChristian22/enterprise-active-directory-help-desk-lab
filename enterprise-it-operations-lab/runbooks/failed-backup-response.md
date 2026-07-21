# Runbook: Failed Backup Response

1. Confirm job, resource, error code, start time, and last successful recovery point.
2. Verify repository capacity, credentials, network path, snapshot limits, and agent health.
3. Retry only after identifying a transient or corrected cause.
4. Open a P2 incident if an RPO is at risk.
5. Perform an alternate backup when the primary path cannot be restored in time.
6. Document the failure, corrective action, and resulting recovery point.
