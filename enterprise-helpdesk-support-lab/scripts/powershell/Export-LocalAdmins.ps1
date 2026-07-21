Get-LocalGroupMember Administrators | Select Name,ObjectClass,PrincipalSource | Export-Csv .\local-admins.csv -NoTypeInformation
