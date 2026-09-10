@echo off
set EXEPATH=%1
set /p NAME=Please input the shortcut name. (without .lnk) 
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "%appdata%\Microsoft\Windows\Start Menu\Programs\%NAME%.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = %EXEPATH% >> CreateShortcut.vbs
echo oLink.Save >> C:/CreateShortcut.vbs
cscript C:/CreateShortcut.vbs
del C:/CreateShortcut.vbs