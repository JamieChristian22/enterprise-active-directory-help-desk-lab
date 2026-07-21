param([Parameter(Mandatory)][string]$DisplayName,[Parameter(Mandatory)][string]$Department)
[pscustomobject]@{Employee=$DisplayName;Department=$Department;Identity='Pending';License='Pending';Device='Pending';MFA='Pending';ManagerValidation='Pending'} | ConvertTo-Json
