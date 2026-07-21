[CmdletBinding()]
param([Parameter(Mandatory)][string]$GroupName)
Import-Module ActiveDirectory -ErrorAction Stop
Get-ADGroupMember -Identity $GroupName -Recursive |
 Select-Object Name,SamAccountName,ObjectClass,DistinguishedName |
 Sort-Object ObjectClass,Name
