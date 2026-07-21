# SOP: Password Reset and Account Unlock

## Purpose
Restore access securely while preventing social-engineering attacks.

## Procedure
1. Confirm the requester’s username and callback number.
2. Verify identity using two approved factors.
3. Check account state with `Get-ADUser -Identity <user> -Properties LockedOut,Enabled,PasswordExpired`.
4. Confirm the account is enabled and not part of an active security investigation.
5. Unlock with `Unlock-ADAccount` when required.
6. Reset the password to a randomly generated temporary value using a secure channel.
7. Set `ChangePasswordAtLogon` to true.
8. Ask the user to sign in while the ticket remains open.
9. Confirm VPN or cached credentials are updated on remote devices.
10. Document verification method, commands used, outcome, and user confirmation.

## Escalate when
- More than five lockouts occur within 30 minutes.
- The account relocks immediately after reset.
- Sign-in activity appears suspicious.
- A privileged or service account is involved.
