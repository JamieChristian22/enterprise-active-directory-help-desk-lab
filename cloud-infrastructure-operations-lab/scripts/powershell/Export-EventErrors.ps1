param([int]$Hours=24)
$start=(Get-Date).AddHours(-$Hours)
Get-WinEvent -FilterHashtable @{LogName='System';Level=1,2;StartTime=$start} | Select TimeCreated,Id,ProviderName,Message
