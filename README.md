# shortcut
Shortcut is a simple Windows Start menu shortcut creator.
# Usage
1. Download shortcut.bat and open a cmd/powershell windows at it's location
2. Enter this : `./shortcut.bat [target location]` (e.g. C:/Windows/notepad.exe)
3. And you're done! Check your start menu and your newly created shortcut sould appear
# System-Wide Usage
1. Download shortcut.bat and place it on a "secure" folder on your PC (when I mean "secure", I mean a folder you only store things you wanna keep on your drive and not delete them accidentally, not an encrypted folder or something like that (you can, but that's not what you should do)) (e.g. C:/Secured/)
2. Add the folder to your PATH (run `setx /M PATH "%PATH%;[Where you stored shortcut.bat]"`) (you need admin permissions to do that)
3. Close any cmd/powershell windows (to refresh their PATH)
4. And run `shortcut [target location]`
5. You're done.
