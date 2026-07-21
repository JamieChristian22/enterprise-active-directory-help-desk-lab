# Hybrid Cloud Architecture

AWS: Route 53 -> Application Load Balancer -> EC2 Auto Scaling across two Availability Zones -> RDS Multi-AZ. S3 stores static assets and backups. CloudWatch, EventBridge, SNS, and Systems Manager support operations.

Azure: Hub-spoke VNet, Azure Firewall, Windows and Linux VMs, Azure Monitor, Log Analytics, Key Vault, and Recovery Services Vault.

Operational principles: least privilege, immutable infrastructure where practical, encrypted data, centralized logging, tested recovery, and documented changes.
