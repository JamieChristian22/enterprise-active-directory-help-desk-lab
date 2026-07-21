Get-WinEvent -FilterHashtable @{LogName='Security';Id=4740} -MaxEvents 100 | Select TimeCreated,MachineName,Message
