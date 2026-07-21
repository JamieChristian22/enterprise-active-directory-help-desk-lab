param([Parameter(Mandatory)][string]$HostName,[int]$Port=443)
Test-NetConnection -ComputerName $HostName -Port $Port | Select-Object ComputerName,RemotePort,TcpTestSucceeded
