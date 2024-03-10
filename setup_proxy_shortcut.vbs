Dim sh, shortcut, userprofile, newpath, iconpath

Set sh = CreateObject("WScript.Shell")
userprofile = sh.ExpandEnvironmentStrings("%userprofile%")
newpath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\no_splash.exe"
iconpath = userprofile & "\AppData\Local\Programs\Opera GX\opera.exe"

Set shortcut = sh.CreateShortcut(userprofile & "\Appdata\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.IconLocation = iconpath
shortcut.Save

Set shortcut = sh.CreateShortcut(userprofile & "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.IconLocation = iconpath
shortcut.Save

Set shortcut = Nothing
Set sh = Nothing
