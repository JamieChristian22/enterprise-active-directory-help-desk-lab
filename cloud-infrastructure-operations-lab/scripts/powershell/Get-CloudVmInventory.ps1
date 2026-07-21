param([string]$OutputPath='vm-inventory.csv')
$items=@([pscustomobject]@{Cloud='AWS';Name='web-01';State='running';Owner='CloudOps'},[pscustomobject]@{Cloud='Azure';Name='ops-win-01';State='running';Owner='Infrastructure'})
$items | Export-Csv $OutputPath -NoTypeInformation
