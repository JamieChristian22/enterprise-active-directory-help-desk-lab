# Runbook: AWS EC2 Unreachable

1. Confirm instance state, status checks, alarms, and recent changes.
2. Use Systems Manager Session Manager when the agent is online.
3. Validate security groups, NACLs, routes, DNS, and host firewall.
4. Inspect console output and system logs.
5. Stop/start only after impact approval and volume review.
6. Recover from an AMI or snapshot if the root volume is corrupted.
