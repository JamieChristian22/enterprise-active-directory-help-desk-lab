Import-Module ActiveDirectory
Get-ADUser -Filter {ServicePrincipalName -like "*"} -Properties ServicePrincipalName,PasswordLastSet,Enabled | Select-Object SamAccountName,Enabled,PasswordLastSet,ServicePrincipalName
