<strong>How does FREEDOME know that you already had a trial after uninstalling ?</strong><br/>
-They simply check if your <a href="https://en.wikipedia.org/wiki/Globally_Unique_Identifier">GUID</a> was already used to activate one.

So we just change our GUID slightly so that FREEDOME thinks we are a new user, but <strong>CAUTION</strong>, changing the GUID could mess with other programs, as it's widely used
# How to change the GUID 
Use the <a href="https://github.com/xhz8s/FREEDOME-Trial-Reset/blob/main/Reset%20Trial.ps1">Script</a> as Admin, <a href="https://github.com/xhz8s/FREEDOME-Trial-Reset/releases/download/1.1/Reset.Trial.exe">Exe</a>, or do it manually:<br/>
1. Uninstall FREEDOME<br/>
2. Open the Registry Editor<br/>
3. Go To "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography"<br/>
4. Double click on "MachineGuid" and change the value slightly<br/>
5. Install FREEDOME again<br/>
6. Enjoy 5 more days of FREEDOME<br/>
