& "C:\Program Files (x86)\F-Secure\Freedome\Freedome\1\uninstall.exe" /run /exit /SilentMode
Set-Itemproperty -path "HKLM:\SOFTWARE\Microsoft\Cryptography" -Name 'MachineGuid' -value (New-Guid).ToString()
wget "https://download.sp.f-secure.com/freedome/installer/2/Freedome.exe" -outfile ((Get-Location).ToString() + "/Freedome.exe")
& ((Get-Location).ToString() + "/Freedome.exe")
Remove-Item ((Get-Location).ToString() + "/Freedome.exe")