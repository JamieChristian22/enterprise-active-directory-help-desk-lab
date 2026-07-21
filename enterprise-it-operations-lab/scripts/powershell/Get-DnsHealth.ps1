param([string[]]$Servers=@('127.0.0.1'),[string]$Name='example.com')
$Servers | ForEach-Object { $r=Resolve-DnsName $Name -Server $_ -ErrorAction SilentlyContinue; [pscustomobject]@{Server=$_;Name=$Name;Healthy=[bool]$r;Answers=($r.IPAddress -join ',')} }
