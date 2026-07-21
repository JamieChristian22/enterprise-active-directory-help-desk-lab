[CmdletBinding()] param([string]$ComputerName=$env:COMPUTERNAME,[string]$OutputPath=".\gpo-evidence.html")
gpresult /S $ComputerName /H $OutputPath /F
if (Test-Path $OutputPath) { Write-Host "GPO evidence created: $OutputPath" } else { throw "GPO evidence creation failed" }
