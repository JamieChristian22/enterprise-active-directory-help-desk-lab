param([string]$Path='C:\RestoreTest')
if (!(Test-Path $Path)) { throw "Restore path not found: $Path" }
Get-ChildItem $Path -Recurse | Get-FileHash -Algorithm SHA256 | Export-Csv restore-validation.csv -NoTypeInformation
