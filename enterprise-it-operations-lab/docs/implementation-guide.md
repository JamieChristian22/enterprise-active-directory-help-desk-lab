# Implementation Guide

## 1. Foundation
1. Create the IP address plan and reserve infrastructure addresses.
2. Deploy two Windows Server 2022 domain controllers on separate hosts.
3. Configure AD-integrated DNS and authorized DHCP scopes.
4. Create organizational units for Users, Workstations, Servers, Service Accounts, and Privileged Accounts.
5. Configure time synchronization and validate domain health.

## 2. Identity and endpoint controls
1. Configure Entra Connect cloud sync in staging mode.
2. Enable MFA and Conditional Access for administrators.
3. Create role-based groups and avoid direct permission assignment.
4. Enroll Windows endpoints into Intune.
5. Deploy BitLocker, Defender, firewall, update rings, and compliance policies.

## 3. AWS operations
1. Initialize Terraform with a remote state backend in a controlled environment.
2. Create the VPC, public/private subnets, route tables, and security groups.
3. Launch a managed EC2 operations host with Systems Manager access.
4. Enable CloudWatch metrics, logs, alarms, and SNS notifications.
5. Apply AWS Backup plans and validate restore permissions.

## 4. Monitoring
1. Import the alert catalog.
2. Assign every alert an owner and response runbook.
3. Test notification delivery.
4. Simulate CPU, disk, service, authentication, and backup failures.
5. Record evidence and tune noisy thresholds.

## 5. Operational acceptance
- Domain health tests pass.
- DNS forward and reverse lookup tests pass.
- Endpoint compliance exceeds 95%.
- Backup restore test completes within the documented RTO.
- P1/P2 alert notifications reach the on-call channel.
- Rollback procedures are reviewed before production changes.
