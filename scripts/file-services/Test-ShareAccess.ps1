[CmdletBinding()] param([Parameter(Mandatory)][string]$Path)
$ErrorActionPreference='Stop'
$result=[ordered]@{Path=$Path;Reachable=$false;CanList=$false;Timestamp=(Get-Date)}
try { $result.Reachable=Test-Path $Path; if($result.Reachable){Get-ChildItem -Path $Path -ErrorAction Stop | Select-Object -First 1 | Out-Null; $result.CanList=$true} } catch {$result.Error=$_.Exception.Message}
[pscustomobject]$result
