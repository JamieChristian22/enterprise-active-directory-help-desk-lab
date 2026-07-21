$p="HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired"; [pscustomobject]@{PendingReboot=Test-Path $p}
