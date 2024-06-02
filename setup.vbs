Dim sh, shortcut, userprofile, newpath, iconpath, curDir, sysObj

Set sh = CreateObject("WScript.Shell")
userprofile = sh.ExpandEnvironmentStrings("%userprofile%")

Set sysObj = CreateObject("Scripting.FileSystemObject")
curDir = sysObj.GetParentFolderName(WScript.ScriptFullName)
newpath = curDir & "\run_no_splash.vbs"
iconpath = sysObj.GetParentFolderName(curDir) & "\opera.exe"

' taskbar shortcut
Set shortcut = sh.CreateShortcut(userprofile & "\Appdata\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.WorkingDirectory = curDir
shortcut.IconLocation = iconpath
shortcut.Save

' start menu shortcut
Set shortcut = sh.CreateShortcut(userprofile & "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.WorkingDirectory = curDir
shortcut.IconLocation = iconpath
shortcut.Save

Set sh = Nothing
Set shortcut = Nothing
Set sysObj = Nothing
