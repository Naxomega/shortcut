@echo off
set EXEPATH=%1
set /p NAME=Please input the shortcut name. (without .lnk) 
echo Set oWS = WScript.CreateObject("WScript.Shell") > %localappdata%\CreateShortcut.vbs
echo sLinkFile = "%appdata%\Microsoft\Windows\Start Menu\Programs\%NAME%.lnk" >> %localappdata%\CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %localappdata%\CreateShortcut.vbs
echo oLink.TargetPath = "%EXEPATH%" >> %localappdata%\CreateShortcut.vbs
echo oLink.Save >> %localappdata%\CreateShortcut.vbs
start "" %localappdata%\CreateShortcut.vbs
echo Done.
