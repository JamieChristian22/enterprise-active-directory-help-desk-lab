[CmdletBinding()]
param([Parameter(Mandatory)][string]$BackupPath,[int]$MaximumAgeHours=26)
if (-not (Test-Path $BackupPath)) { throw "Backup path not found: $BackupPath" }
$latest = Get-ChildItem $BackupPath -File -Recurse | Sort-Object LastWriteTime -Descending | Select-Object -First 1
if (-not $latest) { throw "No backup files found." }
$age = (New-TimeSpan -Start $latest.LastWriteTime -End (Get-Date)).TotalHours
$result = [pscustomobject]@{ File=$latest.FullName; LastWriteTime=$latest.LastWriteTime; AgeHours=[math]::Round($age,2); Healthy=($age -le $MaximumAgeHours) }
$result
if (-not $result.Healthy) { exit 2 }
