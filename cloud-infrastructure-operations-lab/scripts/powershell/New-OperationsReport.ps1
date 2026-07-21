$date=Get-Date -Format yyyy-MM-dd; '# Operations Report '+$date | Out-File ('operations-'+$date+'.md')
