# No splash opera GX

Usually splash screen on startup can only be completely stopped when deleting the splash exe file on browser local folder and this needs to be done every time the browser updates

This app will automatically delete it for you when starting opera gx

# How to set up no splash

- Download the zip from the releases page and extract it
- Move the extracted folder were you want to leave it, the setup will use the current location of the file so if you move it later you will need to run the setup script again
- On the extracted folder run the `proxy_shortcut.vbs` and that's it

# How does this work

Running `proxy_shortcut.vbs` will replace the target of the opera shortcuts on windows taskbar and on start menu with the `no_splash.exe` path. The exe will run a script to delete `opera_gx_splash.exe` before opening opera gx, preventing it from starting the splash animation

I recomend placing the extracted file on the opera gx folder `%userprofile%\appdata\local\programs\Opera GX`. Since the script path will replace the script path, placing the extracted folder on the opera gx folder will make it easier to access the app file location

# Converting the bat to exe

To conver the bat to exe you just need to drag your bat on top of the `converter.bat` script

I just use the converter script from https://stackoverflow.com/a/51104332/15975589

