$paths='HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*','HKLM:\Software\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*'
Get-ItemProperty $paths -ErrorAction SilentlyContinue | Where DisplayName | Select DisplayName,DisplayVersion,Publisher,InstallDate | Sort DisplayName
