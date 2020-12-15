# FREEDOME-Trial-Reset
<strong>How FREEDOME knows that you already had a trial after uninstalling</strong><br/><br/>
They simply check if your <a href="https://de.wikipedia.org/wiki/Globally_Unique_Identifier">GUID</a> in "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography" was already used to attend a trial<br/><br/>

<strong>Change the GUID</strong><br/>
1. Uninstall FREEDOME<br/>
2. Open the Registry Editor(search for regedit in the Windows search bar)<br/>
3. Go To "Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Cryptography"<br/>
4. Double click on "MachineGuid" and change the last character to any number/letter<br/>
5. Reboot your computer<br/>
6. Install FREEDOME again<br/>
7. Enjoy 5 more days of FREEDOME<br/>
