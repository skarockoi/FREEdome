echo 'Uninstalling Freedome...'
  & ((Get-ChildItem -Path "C:\Program Files (x86)\" -recurse -filter "Freedome.exe" -file -ErrorAction SilentlyContinue | foreach-object {$place_path = $_.directory; echo ("${place_path}\${_}").Replace("Freedome.exe","") }) + ("fsvpnuninstall.exe")) /run /exit /SilentMode

echo 'Changing GUID...'
  Set-Itemproperty -path "HKLM:\SOFTWARE\Microsoft\Cryptography" -Name 'MachineGuid' -value (New-Guid).ToString()

echo 'Downloading Freedome...'
  wget "https://download.sp.f-secure.com/freedome/installer/2/Freedome.exe" -outfile ((Get-Location).ToString() + "/Freedome.exe")

echo 'Installing Freedome'
  Start-Process ((Get-Location).ToString() + "/Freedome.exe") -NoNewWindow -Wait
  Remove-Item ((Get-Location).ToString() + "/Freedome.exe")
