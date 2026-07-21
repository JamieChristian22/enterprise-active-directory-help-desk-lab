param([string]$Identity)
Get-ADPrincipalGroupMembership $Identity | Sort Name | Select Name,GroupScope
