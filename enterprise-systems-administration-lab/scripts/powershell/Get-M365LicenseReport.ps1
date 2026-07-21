Connect-MgGraph -Scopes User.Read.All,Organization.Read.All
Get-MgUser -All -Property DisplayName,UserPrincipalName,AssignedLicenses | Select DisplayName,UserPrincipalName,@{n='LicenseCount';e={$_.AssignedLicenses.Count}} | Export-Csv m365-license-report.csv -NoTypeInformation
