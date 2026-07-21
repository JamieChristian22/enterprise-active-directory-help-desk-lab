param([int]$Hours=24)
Get-WinEvent -FilterHashtable @{LogName='System';Level=1,2;StartTime=(Get-Date).AddHours(-$Hours)} | Select-Object TimeCreated,Id,ProviderName,LevelDisplayName,Message
