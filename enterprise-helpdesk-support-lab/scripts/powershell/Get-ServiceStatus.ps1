param([string[]]$Name=@("Spooler","wuauserv","WinDefend")); Get-Service $Name | Select Name,Status,StartType
