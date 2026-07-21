[CmdletBinding()]
param(
    [string[]]$ComputerName = @($env:COMPUTERNAME),
    [int]$DiskWarningPercent = 15,
    [string]$OutputPath = ".\server-health.csv"
)
$results = foreach ($computer in $ComputerName) {
    try {
        $os = Get-CimInstance Win32_OperatingSystem -ComputerName $computer -ErrorAction Stop
        $cpu = Get-CimInstance Win32_Processor -ComputerName $computer | Measure-Object LoadPercentage -Average
        $disks = Get-CimInstance Win32_LogicalDisk -ComputerName $computer -Filter "DriveType=3"
        foreach ($disk in $disks) {
            $freePct = if ($disk.Size) { [math]::Round(($disk.FreeSpace / $disk.Size) * 100, 2) } else { 0 }
            [pscustomobject]@{
                ComputerName = $computer
                LastBootTime = $os.LastBootUpTime
                CpuLoadPercent = [math]::Round($cpu.Average, 2)
                Drive = $disk.DeviceID
                FreeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
                FreePercent = $freePct
                DiskStatus = if ($freePct -lt $DiskWarningPercent) { 'Warning' } else { 'Healthy' }
                CollectedAt = (Get-Date).ToString('s')
            }
        }
    } catch {
        [pscustomobject]@{ ComputerName=$computer; LastBootTime=$null; CpuLoadPercent=$null; Drive=$null; FreeGB=$null; FreePercent=$null; DiskStatus="ERROR: $($_.Exception.Message)"; CollectedAt=(Get-Date).ToString('s') }
    }
}
$results | Export-Csv -NoTypeInformation -Path $OutputPath
$results
