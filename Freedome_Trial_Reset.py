import urllib.request
import uuid 
import os

print("Deleting Freedome...\n")
os.system('cmd /c "C:\\Program Files (x86)\\F-Secure\\Freedome\\Freedome\\1\\uninstall.exe"')

print("Changing GUID...")
os.system('cmd /c "REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v "MachineGuid" /t REG_SZ /d ' + str(uuid.uuid4()) + ' /f"')
print("")

print("Downloading Freedome...\n")
urllib.request.urlretrieve('https://download.sp.f-secure.com/freedome/installer/2/Freedome.exe', 'Freedome.exe')

print("Running Freedome Setup...\n")
os.system('cmd /c "Freedome.exe"')

print("Cleaning up...\n")
os.remove("Freedome.exe")

print("Done...")
