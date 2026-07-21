# Enterprise Active Directory Help Desk Lab — 10/10 Edition

A complete, job-ready Tier 1/Tier 2 technical-support portfolio project demonstrating Windows domain administration, identity support, endpoint troubleshooting, ITSM ticket handling, PowerShell automation, documentation, security awareness, reporting, and customer communication.

## Portfolio scope

- **50** fully resolved synthetic incidents and service requests
- **15** end-user knowledge-base articles
- **14** production-style PowerShell scripts
- **6** SOPs, **7** runbooks, security guidance, GPO baseline, and implementation guide
- Network and OU/security-group diagrams in editable SVG format
- Ticket dataset and a polished Excel metrics dashboard
- Interview answers, STAR stories, resume bullets, and evidence checklist

## Business environment

Northstar Professional Services is a fictional 120-user consulting company. The service desk supports Windows 11, Active Directory Domain Services, DNS, DHCP, SMB file shares, mapped drives, network printers, VPN, Microsoft 365 sign-in, and standard business applications.

| System | Role | Address |
|---|---|---|
| NS-DC01 | AD DS and DNS | 10.20.0.10 |
| NS-FS01 | File server | 10.20.0.20 |
| NS-PRN01 | Print server | 10.20.0.30 |
| NS-HD01 | Help desk workstation | 10.20.10.25 |

Domain: `northstar.local`  
Server subnet: `10.20.0.0/24`  
User subnet: `10.20.10.0/24`  
VPN pool: `10.20.50.0/24`

## What hiring managers can verify

- User creation, onboarding, password reset, account unlock, access changes, and offboarding workflows
- DNS, DHCP, VPN, mapped-drive, printing, Group Policy, endpoint, and application troubleshooting
- Ticket prioritization, SLA measurement, root-cause notes, validation, customer updates, and secure closure
- PowerShell scripts with parameter validation, error handling, logging, safe defaults, and `-WhatIf` support where changes occur
- Least privilege, identity verification, audit trails, phishing response, and lost-device procedures
- Metrics analysis by category, priority, agent, resolution time, and SLA attainment

## Start here

1. Read `docs/architecture/01-business-scenario.md` and `05-implementation-guide.md`.
2. Open `diagrams/network-topology.svg` and `diagrams/ou-group-design.svg`.
3. Review the 50 completed records in `tickets/` and `data/tickets.csv`.
4. Open `data/help-desk-metrics-dashboard.xlsx` for the KPI dashboard.
5. Inspect and test scripts only in an isolated, authorized lab.
6. Use `docs/evidence/README.md` to add genuine screenshots from your own implementation.
7. Use `resume/` and `interview/` to present the work professionally.

## Important honesty statement

All company names, users, assets, and tickets are synthetic. The documentation and automation are complete, but screenshots must come from a lab you personally build. This avoids presenting fabricated evidence to employers.

## Target roles

Help Desk Technician • IT Support Specialist • Service Desk Analyst • Desktop Support Technician • Technical Support Specialist • Junior Systems Administrator
