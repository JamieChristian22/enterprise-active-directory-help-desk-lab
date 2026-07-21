Get-Process Teams -ErrorAction SilentlyContinue | Stop-Process -Force; Remove-Item "$env:APPDATA\Microsoft\Teams\*" -Recurse -Force -ErrorAction SilentlyContinue
