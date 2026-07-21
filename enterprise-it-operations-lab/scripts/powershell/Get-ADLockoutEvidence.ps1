param([Parameter(Mandatory)][string]$SamAccountName)
$ErrorActionPreference='Stop'
Get-WinEvent -FilterHashtable @{LogName='Security';Id=4740;StartTime=(Get-Date).AddDays(-2)} |
 Where-Object {$_.Message -match [regex]::Escape($SamAccountName)} |
 Select-Object TimeCreated,MachineName,Id,Message
