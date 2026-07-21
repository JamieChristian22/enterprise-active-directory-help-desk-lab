[CmdletBinding()]
param([int]$Days=45)
$cutoff=(Get-Date).AddDays($Days)
Get-ChildItem Cert:\LocalMachine\My | Where-Object {$_.NotAfter -le $cutoff} |
 Select-Object Subject,Thumbprint,NotBefore,NotAfter,@{n='DaysRemaining';e={[math]::Floor(($_.NotAfter-(Get-Date)).TotalDays)}} |
 Sort-Object DaysRemaining
