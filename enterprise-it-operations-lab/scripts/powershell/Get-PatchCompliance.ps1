$last=Get-HotFix | Sort-Object InstalledOn -Descending | Select-Object -First 1
[pscustomobject]@{Computer=$env:COMPUTERNAME;LastPatch=$last.HotFixID;InstalledOn=$last.InstalledOn;AgeDays=((Get-Date)-$last.InstalledOn).Days}
