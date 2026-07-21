[CmdletBinding()] param([string]$OutputDirectory="$env:USERPROFILE\Desktop\SupportBundle")
$ErrorActionPreference='Stop'; New-Item -ItemType Directory -Path $OutputDirectory -Force | Out-Null
Get-ComputerInfo | Out-File "$OutputDirectory\computer-info.txt"
ipconfig /all | Out-File "$OutputDirectory\ipconfig.txt"
gpresult /r | Out-File "$OutputDirectory\gpresult.txt"
Get-WinEvent -FilterHashtable @{LogName='System';Level=1,2;StartTime=(Get-Date).AddHours(-24)} -ErrorAction SilentlyContinue | Select-Object TimeCreated,Id,ProviderName,Message | Export-Csv "$OutputDirectory\system-errors.csv" -NoTypeInformation
Write-Output "Support bundle created at $OutputDirectory"
