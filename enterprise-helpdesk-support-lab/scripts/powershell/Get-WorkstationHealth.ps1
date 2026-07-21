Get-CimInstance Win32_OperatingSystem | Select-Object CSName,Caption,Version,LastBootUpTime; Get-PSDrive -PSProvider FileSystem | Select Name,Used,Free
