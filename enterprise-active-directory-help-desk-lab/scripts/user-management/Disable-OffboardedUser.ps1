[CmdletBinding(SupportsShouldProcess)]
param(
 [Parameter(Mandatory)][string]$SamAccountName,
 [string]$DisabledUsersOU='OU=Disabled Users,OU=Users,OU=Northstar,DC=northstar,DC=local'
)
Import-Module ActiveDirectory -ErrorAction Stop
try {
 $user=Get-ADUser -Identity $SamAccountName -Properties MemberOf -ErrorAction Stop
 if ($PSCmdlet.ShouldProcess($SamAccountName,'Disable, remove group memberships, and move to Disabled Users')) {
   Disable-ADAccount -Identity $user
   $user.MemberOf | ForEach-Object { Remove-ADGroupMember -Identity $_ -Members $user -Confirm:$false -ErrorAction Continue }
   Set-ADUser -Identity $user -Description "Offboarded $(Get-Date -Format yyyy-MM-dd)" -Clear Manager
   Move-ADObject -Identity $user.DistinguishedName -TargetPath $DisabledUsersOU
   Write-Output "Offboarding completed for $SamAccountName"
 }
} catch { Write-Error "Offboarding failed: $($_.Exception.Message)"; exit 1 }
