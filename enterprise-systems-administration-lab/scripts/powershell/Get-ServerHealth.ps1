$ErrorActionPreference='Stop'
Get-CimInstance Win32_OperatingSystem | Select-Object CSName,Caption,LastBootUpTime,@{n='FreeMemoryMB';e={[math]::Round($_.FreePhysicalMemory/1024,2)}}
Get-Volume | Select DriveLetter,FileSystemLabel,SizeRemaining,Size,HealthStatus
Get-Service | Where-Object Status -ne 'Running' | Select -First 20 Name,Status,StartType
