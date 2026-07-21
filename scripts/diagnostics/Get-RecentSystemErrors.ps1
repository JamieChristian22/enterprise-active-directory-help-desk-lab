[CmdletBinding()]
param([int]$Hours=24,[int]$MaxEvents=100)
$start=(Get-Date).AddHours(-$Hours)
Get-WinEvent -FilterHashtable @{LogName=@('System','Application');Level=@(1,2);StartTime=$start} -ErrorAction SilentlyContinue |
 Select-Object -First $MaxEvents TimeCreated,LogName,ProviderName,Id,LevelDisplayName,Message
