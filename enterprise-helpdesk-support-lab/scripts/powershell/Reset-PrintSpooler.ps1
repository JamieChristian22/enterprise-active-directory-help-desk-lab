Stop-Service Spooler -Force; Remove-Item "$env:SystemRoot\System32\spool\PRINTERS\*" -Force -ErrorAction SilentlyContinue; Start-Service Spooler
