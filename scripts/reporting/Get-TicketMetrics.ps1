[CmdletBinding()] param([string]$CsvPath="..\..\data\tickets.csv")
$items=Import-Csv $CsvPath
$resolved=$items | Where-Object {$_.status -eq 'Resolved'}
[pscustomobject]@{Total=$items.Count;Resolved=$resolved.Count;SLA_Met=($resolved|Where-Object {$_.sla_result -eq 'Met'}).Count;AverageResolutionMinutes=[math]::Round(($resolved|Measure-Object resolution_minutes -Average).Average,1)}
$items | Group-Object category | Sort-Object Count -Descending | Select-Object Name,Count
