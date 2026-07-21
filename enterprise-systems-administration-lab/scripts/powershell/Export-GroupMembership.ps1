Get-ADGroup -Filter * | ForEach-Object {
  $g=$_
  Get-ADGroupMember $g -Recursive -ErrorAction SilentlyContinue | Select @{n='Group';e={$g.Name}},Name,ObjectClass
} | Export-Csv group-membership.csv -NoTypeInformation
