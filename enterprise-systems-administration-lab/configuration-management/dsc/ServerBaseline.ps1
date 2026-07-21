Configuration ServerBaseline {
    Import-DscResource -ModuleName PSDesiredStateConfiguration
    Node localhost {
        Service EventLog { Name='EventLog'; State='Running'; StartupType='Automatic' }
        Service WinRM { Name='WinRM'; State='Running'; StartupType='Automatic' }
        Registry DisableSMB1 { Key='HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters'; ValueName='SMB1'; ValueData=0; ValueType='Dword'; Ensure='Present' }
    }
}
ServerBaseline -OutputPath "$PSScriptRoot\mof"
