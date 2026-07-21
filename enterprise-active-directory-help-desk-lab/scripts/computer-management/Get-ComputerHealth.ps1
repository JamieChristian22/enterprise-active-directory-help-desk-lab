[CmdletBinding()]
param([string]$ComputerName=$env:COMPUTERNAME)
$session = if ($ComputerName -eq $env:COMPUTERNAME) { $null } else { New-CimSession -ComputerName $ComputerName -ErrorAction Stop }
$params = @{}; if ($session) { $params.CimSession=$session }
try {
 $os=Get-CimInstance @params Win32_OperatingSystem
 $cs=Get-CimInstance @params Win32_ComputerSystem
 $disk=Get-CimInstance @params Win32_LogicalDisk -Filter "DeviceID='C:'"
 $boot=[Management.ManagementDateTimeConverter]::ToDateTime($os.LastBootUpTime)
 [pscustomobject]@{
  Computer=$cs.Name; User=$cs.UserName; OS=$os.Caption; Version=$os.Version
  UptimeHours=[math]::Round(((Get-Date)-$boot).TotalHours,1)
  MemoryGB=[math]::Round($cs.TotalPhysicalMemory/1GB,1)
  FreeDiskGB=[math]::Round($disk.FreeSpace/1GB,1)
  DiskFreePercent=[math]::Round(($disk.FreeSpace/$disk.Size)*100,1)
 }
} finally { if ($session) { Remove-CimSession $session } }
