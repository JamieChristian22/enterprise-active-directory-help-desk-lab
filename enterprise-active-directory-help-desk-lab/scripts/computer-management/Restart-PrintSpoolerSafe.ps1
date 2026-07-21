[CmdletBinding(SupportsShouldProcess)] param([string]$ComputerName=$env:COMPUTERNAME)
$svc=Get-Service -ComputerName $ComputerName -Name Spooler -ErrorAction Stop
if($PSCmdlet.ShouldProcess($ComputerName,'Restart Print Spooler')){Restart-Service -InputObject $svc -Force; Get-Service -ComputerName $ComputerName -Name Spooler}
