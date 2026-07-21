# CHG-2001: June Server Patching

- Risk: Medium
- Window: June 20, 2026, 22:00-01:00 ET
- Scope: 18 Windows and 12 Linux servers
- Pre-checks: successful backups, healthy replication, minimum 25 percent free disk
- Implementation: phased patch rings with service validation after each ring
- Test: authentication, DNS, file access, application health, monitoring, backup agent
- Rollback: uninstall update where supported or restore snapshot/AMI
- Result: Successful; one monitoring-agent service required manual restart
- Approval: Operations Manager and Application Owner
