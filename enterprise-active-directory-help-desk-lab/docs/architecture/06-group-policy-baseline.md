# Group Policy Baseline

| GPO | Link | Settings | Validation |
|---|---|---|---|
| NS-Workstation-Security | Workstations OU | Screen lock 15 minutes, Windows Defender enabled, guest account disabled | `gpresult /h report.html` |
| NS-Password-Policy | Domain | 14-character minimum, complexity enabled, 15-minute lockout after 5 attempts | `Get-ADDefaultDomainPasswordPolicy` |
| NS-Drive-Mappings | Department OUs | Maps approved department share by security group | Sign in and verify drive letter |
| NS-Windows-Update | Workstations OU | Automatic download and scheduled installation | Windows Update policy report |
| NS-Audit-Policy | Domain Controllers OU | Account logon, account management, policy change auditing | Event Viewer Security log |

All settings are lab examples. Production values require organizational approval and change control.
