import urllib.request
import uuid 
import os

os.system('cmd /c "C:\\Program Files (x86)\\F-Secure\\Freedome\\Freedome\\1\\uninstall.exe"')
os.system('cmd /c "REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" /v "MachineGuid" /t REG_SZ /d ' + str(uuid.uuid4()) + ' /f"')
urllib.request.urlretrieve('https://download.sp.f-secure.com/freedome/installer/2/Freedome.exe', 'Freedome.exe')
os.system('cmd /c "Freedome.exe"')
os.remove("Freedome.exe")


