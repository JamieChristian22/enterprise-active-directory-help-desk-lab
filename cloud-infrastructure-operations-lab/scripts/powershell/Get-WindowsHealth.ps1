Get-CimInstance Win32_OperatingSystem | Select Caption,LastBootUpTime,@{n='FreeMemoryMB';e={[math]::Round($_.FreePhysicalMemory/1024,2)}}
Get-Volume | Select DriveLetter,HealthStatus,SizeRemaining,Size
