param([string[]]$Names=@('example.com'))
foreach($n in $Names){Resolve-DnsName $n -ErrorAction SilentlyContinue | Select Name,Type,IPAddress}
