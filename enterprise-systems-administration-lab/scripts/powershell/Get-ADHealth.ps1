$ErrorActionPreference = 'Stop'
$services = 'NTDS','DNS','Netlogon','KDC'
$services | ForEach-Object { Get-Service $_ | Select-Object Name,Status,StartType }
repadmin /replsummary
