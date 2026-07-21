param([int]$Days=30)
Get-ChildItem Cert:\LocalMachine\My | Where-Object NotAfter -lt (Get-Date).AddDays($Days) | Select Subject,Thumbprint,NotAfter
