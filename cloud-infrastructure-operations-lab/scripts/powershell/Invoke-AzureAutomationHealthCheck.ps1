[CmdletBinding()]
param([Parameter(Mandatory)][string]$ResourceGroup,[Parameter(Mandatory)][string]$AutomationAccount)
$jobs = Get-AzAutomationJob -ResourceGroupName $ResourceGroup -AutomationAccountName $AutomationAccount | Select-Object -First 50
$failed = $jobs | Where-Object Status -in @('Failed','Suspended','Stopped')
[pscustomobject]@{Checked=$jobs.Count; Failed=$failed.Count; Healthy=($failed.Count -eq 0)}
if($failed){$failed | Select-Object JobId,RunbookName,Status,StartTime,EndTime}
