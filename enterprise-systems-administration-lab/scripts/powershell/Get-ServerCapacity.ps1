[CmdletBinding()] param([string[]]$ComputerName=@($env:COMPUTERNAME),[string]$OutputPath=".\server-capacity.csv")
$rows=foreach($c in $ComputerName){
  $os=Get-CimInstance Win32_OperatingSystem -ComputerName $c
  $vol=Get-CimInstance Win32_LogicalDisk -ComputerName $c -Filter "DriveType=3"
  foreach($d in $vol){[pscustomobject]@{Computer=$c;Drive=$d.DeviceID;FreeGB=[math]::Round($d.FreeSpace/1GB,2);SizeGB=[math]::Round($d.Size/1GB,2);MemoryFreeGB=[math]::Round($os.FreePhysicalMemory/1MB,2)}}
}
$rows|Export-Csv $OutputPath -NoTypeInformation
