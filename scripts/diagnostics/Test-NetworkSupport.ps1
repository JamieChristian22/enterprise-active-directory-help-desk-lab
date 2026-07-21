[CmdletBinding()]
param(
 [string]$DomainController='NS-DC01',
 [string]$FileServer='NS-FS01',
 [string]$InternetTarget='1.1.1.1'
)
$results=@()
function Add-Test($Name,$Passed,$Details){ $script:results += [pscustomobject]@{Test=$Name;Passed=[bool]$Passed;Details=$Details} }
$config=Get-NetIPConfiguration | Where-Object {$_.IPv4DefaultGateway} | Select-Object -First 1
Add-Test 'IPv4 address' ($null -ne $config.IPv4Address) ($config.IPv4Address.IPAddress)
Add-Test 'Default gateway' (Test-Connection $config.IPv4DefaultGateway.NextHop -Count 1 -Quiet) $config.IPv4DefaultGateway.NextHop
Add-Test 'Domain controller ping' (Test-Connection $DomainController -Count 1 -Quiet) $DomainController
$dns=Resolve-DnsName $DomainController -ErrorAction SilentlyContinue
Add-Test 'Internal DNS resolution' ($null -ne $dns) (($dns.IPAddress -join ','))
$smb=Test-NetConnection $FileServer -Port 445 -WarningAction SilentlyContinue
Add-Test 'File server SMB' $smb.TcpTestSucceeded "$FileServer`:445"
Add-Test 'External IP connectivity' (Test-Connection $InternetTarget -Count 1 -Quiet) $InternetTarget
$results
if ($results.Passed -contains $false){ exit 2 }
