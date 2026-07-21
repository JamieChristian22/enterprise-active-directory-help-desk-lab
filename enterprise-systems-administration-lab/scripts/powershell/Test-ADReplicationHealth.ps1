[CmdletBinding()] param([string]$OutputPath=".\ad-replication-health.csv")
$results = repadmin /showrepl * /csv | ConvertFrom-Csv
$results | Select-Object 'Source DSA','Destination DSA','Naming Context','Number of Failures','Last Success Time' | Export-Csv $OutputPath -NoTypeInformation
Write-Host "Replication evidence exported to $OutputPath"
