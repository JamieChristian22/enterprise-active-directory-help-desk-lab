[CmdletBinding(SupportsShouldProcess)]
param([int]$InactiveDays = 90, [string]$OutputPath = ".\stale-ad-accounts.csv")
Import-Module ActiveDirectory -ErrorAction Stop
$cutoff = (Get-Date).AddDays(-$InactiveDays)
$accounts = Get-ADUser -Filter {Enabled -eq $true -and LastLogonDate -lt $cutoff} -Properties LastLogonDate,Department,Manager |
    Select-Object SamAccountName,Name,Department,LastLogonDate,DistinguishedName
$accounts | Export-Csv -NoTypeInformation $OutputPath
Write-Host "Found $($accounts.Count) enabled accounts inactive since $cutoff. Review before disabling."
$accounts
