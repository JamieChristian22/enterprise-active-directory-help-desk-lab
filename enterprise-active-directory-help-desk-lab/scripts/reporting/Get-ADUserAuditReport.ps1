[CmdletBinding()]
param([string]$OutputPath=".\AD-User-Audit-$(Get-Date -Format yyyyMMdd).csv")
Import-Module ActiveDirectory -ErrorAction Stop
Get-ADUser -Filter * -Properties Enabled,Department,Title,Manager,LastLogonDate,PasswordLastSet,PasswordNeverExpires,LockedOut |
 Select-Object SamAccountName,Name,Enabled,Department,Title,Manager,LastLogonDate,PasswordLastSet,PasswordNeverExpires,LockedOut |
 Export-Csv -Path $OutputPath -NoTypeInformation -Encoding UTF8
Write-Output "Report written to $OutputPath"
