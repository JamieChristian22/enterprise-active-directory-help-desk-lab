[CmdletBinding()] param([int]$Days=45,[string]$OutputPath=".\certificate-expiry.csv")
$cutoff=(Get-Date).AddDays($Days)
Get-ChildItem Cert:\LocalMachine\My | Where-Object {$_.NotAfter -le $cutoff} | Select Subject,Thumbprint,NotBefore,NotAfter,@{n='DaysRemaining';e={[math]::Floor(($_.NotAfter-(Get-Date)).TotalDays)}} | Export-Csv $OutputPath -NoTypeInformation
