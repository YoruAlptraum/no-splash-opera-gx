Dim sh, shortcut, userprofile, newpath, iconpath, directory

Set sh = CreateObject("WScript.Shell")
userprofile = sh.ExpandEnvironmentStrings("%userprofile%")

' This variable is the path to your Opera GX folder
' Edit this if you have Opera GX installed in a different directory
directory = userprofile & "\AppData\Local\Programs\Opera GX"

newpath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\no_splash.exe"
iconpath = directory & "\opera.exe"

' taskbar shortcut
Set shortcut = sh.CreateShortcut(userprofile & "\Appdata\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.IconLocation = iconpath
shortcut.Save

' start menu shortcut
Set shortcut = sh.CreateShortcut(userprofile & "\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Opera GX Browser.lnk")
shortcut.TargetPath = newpath
shortcut.IconLocation = iconpath
shortcut.Save

Set shortcut = Nothing
Set sh = Nothing
