Start-Service -Name 'Freedome Service'
Stop-Process -Name 'Freedome'
& "C:\Program Files (x86)\F-Secure\Freedome\Freedome\1\uninstall.exe" /run /exit /SilentMode

Set-Itemproperty -path "HKLM:\SOFTWARE\Microsoft\Cryptography" -Name 'MachineGuid' -value (New-Guid).ToString()
wget "https://download.sp.f-secure.com/freedome/installer/2/Freedome.exe" -outfile ((Get-Location).ToString() + "/Freedome.exe")
Start-Process ((Get-Location).ToString() + "/Freedome.exe") -NoNewWindow -Wait
Remove-Item ((Get-Location).ToString() + "/Freedome.exe")
Remove-Item ("C:\Users\Public\Desktop\Freedome.lnk")

Stop-Process -Name 'Freedome'
Stop-Service -Name 'Freedome Service'
Set-Itemproperty -path "HKLM:\SOFTWARE\WOW6432Node\F-Secure\Freedome" -Name 'LaunchAtStartup' -value 'true'
Set-Itemproperty -path "HKLM:\SOFTWARE\WOW6432Node\F-Secure\Freedome" -Name 'DefaultSite' -value 'freedome-ch-gw'
Set-Itemproperty -path "HKLM:\SOFTWARE\WOW6432Node\F-Secure\Freedome" -Name 'RecentlyUsedSites' -value 'freedome-ch-gw'
Set-Itemproperty -path "HKLM:\SOFTWARE\WOW6432Node\F-Secure\Freedome" -Name 'NearestSite' -value 'freedome-ch-gw'
Start-Service -Name 'Freedome Service'
