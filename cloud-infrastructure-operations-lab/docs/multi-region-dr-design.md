# Multi-Region Disaster Recovery Design
Tier 1 services use warm standby with replicated data, tested DNS failover, and target RTO 60 minutes/RPO 15 minutes. Tier 2 services use pilot light with RTO 4 hours/RPO 1 hour. Recovery tests validate infrastructure deployment, secret access, data integrity, DNS cutover, monitoring, rollback, and business-owner signoff.
