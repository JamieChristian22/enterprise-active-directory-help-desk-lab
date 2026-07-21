# Implementation Guide

1. Configure separate AWS and Azure lab subscriptions.
2. Enable MFA and create least-privilege operator roles.
3. Configure Terraform remote state with locking.
4. Deploy networking before compute and data tiers.
5. Validate security groups, NSGs, routing, DNS, and outbound access.
6. Enable monitoring, backups, and patch management.
7. Run smoke tests and record evidence.
8. Execute rollback if acceptance criteria fail.
