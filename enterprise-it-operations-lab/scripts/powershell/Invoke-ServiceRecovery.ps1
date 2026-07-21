param([Parameter(Mandatory)][string]$Name)
$svc=Get-Service -Name $Name -ErrorAction Stop
if($svc.Status -ne 'Running'){Start-Service $Name; Start-Sleep 3}
Get-Service $Name | Select Name,Status,StartType
