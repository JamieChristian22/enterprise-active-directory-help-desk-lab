param([int]$Days=90)
Import-Module ActiveDirectory
$cutoff=(Get-Date).AddDays(-$Days)
Get-ADComputer -Filter * -Properties LastLogonDate,OperatingSystem | Where-Object {$_.LastLogonDate -lt $cutoff} | Select Name,OperatingSystem,LastLogonDate
