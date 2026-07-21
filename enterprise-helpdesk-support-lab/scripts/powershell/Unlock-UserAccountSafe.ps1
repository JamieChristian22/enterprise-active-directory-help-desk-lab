param([Parameter(Mandatory)][string]$SamAccountName)
Unlock-ADAccount -Identity $SamAccountName
Get-ADUser $SamAccountName -Properties LockedOut,LastLogonDate
