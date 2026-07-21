[CmdletBinding()] param([string]$ComputerName=$env:COMPUTERNAME,[string]$OutputPath=".\gpresult-$ComputerName.html")
$ErrorActionPreference='Stop'
try { gpresult /S $ComputerName /H $OutputPath /F | Out-Null; Write-Output "Report created: $OutputPath" } catch { Write-Error "Unable to create Group Policy report: $($_.Exception.Message)"; exit 1 }
