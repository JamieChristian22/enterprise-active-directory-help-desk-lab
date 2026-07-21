[CmdletBinding(SupportsShouldProcess)]
param(
    [Parameter(Mandatory)][ValidateScript({Test-Path $_ -PathType Leaf})][string]$CsvPath,
    [Parameter(Mandatory)][securestring]$InitialPassword
)
Import-Module ActiveDirectory -ErrorAction Stop
$required = 'FirstName','LastName','SamAccountName','Department','Title','ManagerSam','OU','Groups'
$rows = Import-Csv $CsvPath
foreach ($row in $rows) {
    foreach ($column in $required) { if (-not ($row.PSObject.Properties.Name -contains $column)) { throw "Missing CSV column: $column" } }
    if (Get-ADUser -Filter "SamAccountName -eq '$($row.SamAccountName)'" -ErrorAction SilentlyContinue) {
        Write-Warning "Skipping existing account $($row.SamAccountName)"; continue
    }
    $upn = "$($row.SamAccountName)@northstar.local"
    $display = "$($row.FirstName) $($row.LastName)"
    if ($PSCmdlet.ShouldProcess($display, "Create AD user in $($row.OU)")) {
        try {
            New-ADUser -Name $display -GivenName $row.FirstName -Surname $row.LastName `
                -SamAccountName $row.SamAccountName -UserPrincipalName $upn -DisplayName $display `
                -Department $row.Department -Title $row.Title -Path $row.OU `
                -AccountPassword $InitialPassword -Enabled $true -ChangePasswordAtLogon $true -ErrorAction Stop
            if ($row.ManagerSam) {
                $manager = Get-ADUser -Identity $row.ManagerSam -ErrorAction Stop
                Set-ADUser -Identity $row.SamAccountName -Manager $manager.DistinguishedName
            }
            $row.Groups -split ';' | Where-Object { $_ } | ForEach-Object {
                Add-ADGroupMember -Identity $_ -Members $row.SamAccountName -ErrorAction Stop
            }
            Write-Output "Created $($row.SamAccountName)"
        } catch { Write-Error "Failed $($row.SamAccountName): $($_.Exception.Message)" }
    }
}
