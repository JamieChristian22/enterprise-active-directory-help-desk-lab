# Hybrid Architecture

## Sites
- HQ: 10.20.0.0/16
- Distribution Site A: 10.30.0.0/16
- Distribution Site B: 10.40.0.0/16
- AWS Production VPC: 10.60.0.0/16

## Core services
- NS-DC01 and NS-DC02: Active Directory, DNS
- NS-DHCP01: DHCP failover partner
- NS-FS01: departmental file services
- NS-MON01: monitoring and log collection
- AWS EC2 application instances in private subnets
- Systems Manager for managed administrative access

## Trust boundaries
- User, server, management, guest, voice, and printer VLANs are separated.
- East-west access is denied unless explicitly required.
- Administrative protocols originate only from the management network.
- Internet-facing services terminate at managed load-balancing or gateway services.
