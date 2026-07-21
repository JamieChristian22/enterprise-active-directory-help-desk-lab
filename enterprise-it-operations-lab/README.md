# Enterprise IT Operations Lab

A complete, original **simulated enterprise operations portfolio** demonstrating job-ready work for Cloud Operations Engineer, Infrastructure Engineer I, IT Support Engineer I, Support Engineer I, Service Desk Analyst, Technical Support Engineer I, Help Desk Technician I, IT Support Associate, and Junior Systems Administrator roles.

> This is a lab simulation, not a claim of production employment. All names, systems, tickets, incidents, and metrics are fictional and created for portfolio demonstration.

## Portfolio scale

- **100** resolved operations and support tickets
- **38** knowledge-base articles
- **28** operational and incident runbooks
- **15** standard operating procedures
- **16** PowerShell automations
- **13** Bash automations
- Python ticket analytics and AWS Terraform
- **6** Mermaid architecture/process diagrams
- Incident, RCA, change, backup, monitoring, security, inventory, KPI, interview, and resume evidence

## Environment

The fictional Northstar Services environment combines Active Directory, Microsoft Entra ID, Microsoft 365, Intune, Windows Server, Linux, AWS, Azure, centralized monitoring, immutable backup, and ITIL-aligned incident/change controls.

## What this proves

- Troubleshooting across identity, endpoint, network, Microsoft 365, Windows, Linux, AWS, and Azure
- Clear ticket notes, SLA handling, escalation, validation, and customer communication
- Infrastructure health checks and repeatable automation
- Monitoring, incident response, root-cause analysis, backup, restoration, and disaster recovery
- Change control, least privilege, access review, patching, and security hardening
- Documentation written for operators, reviewers, managers, and interviewers

## Start here

1. `docs/executive-overview.md`
2. `docs/skills-matrix.md`
3. `architecture/hybrid-architecture.md`
4. `tickets/ticket-analysis.md`
5. `incidents/INC-1007-domain-authentication-outage.md`
6. `scripts/powershell/Get-ServerHealth.ps1`
7. `scripts/bash/linux-health-check.sh`
8. `interview/star-stories.md`

## Repository map

| Folder | Contents |
|---|---|
| `architecture/`, `diagrams/` | hybrid infrastructure, identity, monitoring, backup, and change flows |
| `tickets/`, `knowledge-base/` | resolved cases, metrics, and reusable support guidance |
| `runbooks/`, `sops/` | operational response and controlled procedures |
| `scripts/` | PowerShell, Bash, and Python automation |
| `terraform/` | AWS infrastructure-as-code example |
| `monitoring/`, `dashboards/` | alerts, KPIs, and reporting guidance |
| `security/`, `backups/` | hardening, risks, reviews, policy, and restore evidence |
| `incidents/`, `change-management/` | incident, RCA, and approved-change examples |
| `interview/`, `resume/` | interview stories, technical questions, and truthful resume bullets |

## Validation

The GitHub Actions workflow checks required files, Python syntax, shell syntax, CSV readability, and Terraform formatting when Terraform is available. `MANIFEST.json` records file paths, sizes, and SHA-256 hashes.

## License
MIT License. Use the project structure as inspiration, but describe it truthfully as a simulated lab in applications and interviews.

## Operations Datasets

The `datasets/` folder includes 11 analysis-ready CSV datasets with more than 8,000 synthetic operational records covering users, endpoints, servers, service tickets, infrastructure telemetry, patching, backups, cloud inventory, major incidents, changes, and vulnerabilities. See `datasets/README.md` for the catalog and `analytics/operations_analysis.sql` for ready-to-run KPI queries. All records are fictional and safe for portfolio use.
