[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][string]$SamAccountName,
    [Parameter(Mandatory)][ValidateNotNullOrEmpty()][securestring]$TemporaryPassword,
    [switch]$Unlock
)
Import-Module ActiveDirectory -ErrorAction Stop
try {
    $user = Get-ADUser -Identity $SamAccountName -Properties LockedOut,Enabled -ErrorAction Stop
    if (-not $user.Enabled) { throw "Account '$SamAccountName' is disabled. Escalate before resetting." }
    if ($PSCmdlet.ShouldProcess($SamAccountName, 'Reset password and require change at next logon')) {
        Set-ADAccountPassword -Identity $user -Reset -NewPassword $TemporaryPassword -ErrorAction Stop
        Set-ADUser -Identity $user -ChangePasswordAtLogon $true -ErrorAction Stop
        if ($Unlock -and $user.LockedOut) { Unlock-ADAccount -Identity $user -ErrorAction Stop }
        Write-Output "Password reset completed for $SamAccountName. Change at next logon is required."
    }
} catch {
    Write-Error "Password reset failed for $SamAccountName: $($_.Exception.Message)"
    exit 1
}
