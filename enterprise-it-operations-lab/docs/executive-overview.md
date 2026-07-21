# Executive Overview

## Objective
Create a secure, supportable hybrid IT environment for Northstar Logistics Group while reducing manual operations, improving service visibility, and establishing repeatable incident and change practices.

## Design decisions
- Active Directory remains the authoritative identity source for legacy Windows workloads.
- Entra ID and Microsoft 365 provide cloud identity, collaboration, and endpoint management.
- AWS hosts externally accessible and elastic workloads in isolated subnets.
- Administrative access uses least privilege, MFA, separate admin accounts, and documented break-glass controls.
- Monitoring is centralized around actionable alerts with ownership, severity, thresholds, and response runbooks.

## Measured operating targets
- Tier-1 business services: 99.9% monthly availability
- Priority-1 acknowledgment: 15 minutes
- Priority-2 acknowledgment: 30 minutes
- Critical patch compliance: 95% within 14 days
- Daily backup success: 98% or higher
- Quarterly access reviews: 100% completion

## Delivered controls
- Joiner-mover-leaver workflow
- Monthly patch and maintenance process
- Backup and restore testing
- Monitoring and alert catalog
- Service-desk ticket classification and escalation
- Change approval, testing, implementation, and rollback records
- Infrastructure inventory and ownership mapping
