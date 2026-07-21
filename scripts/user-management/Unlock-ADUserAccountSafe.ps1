[CmdletBinding(SupportsShouldProcess)] param([Parameter(Mandatory)][string]$SamAccountName)
Import-Module ActiveDirectory -ErrorAction Stop
$user=Get-ADUser -Identity $SamAccountName -Properties LockedOut -ErrorAction Stop
if(-not $user.LockedOut){Write-Output "$SamAccountName is not locked."; return}
if($PSCmdlet.ShouldProcess($SamAccountName,'Unlock AD account')){Unlock-ADAccount -Identity $user; Write-Output "$SamAccountName unlocked."}
