param([Parameter(Mandatory)][string]$CsvPath)
Import-Csv $CsvPath | ForEach-Object {
  $upn = "$($_.SamAccountName)@corp.example.com"
  New-ADUser -Name $_.DisplayName -SamAccountName $_.SamAccountName -UserPrincipalName $upn -Path $_.OU -Enabled $true -ChangePasswordAtLogon $true -AccountPassword (ConvertTo-SecureString $_.TemporaryPassword -AsPlainText -Force)
}
