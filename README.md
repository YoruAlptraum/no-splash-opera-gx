# No Splash Opera GX

Usually the splash screen on startup can only be completely prevented when deleting the splash exe file on browser local folder and this needs to be done every time the browser updates

This app will automatically delete it for you when starting the browser

# Video demonstrating how to setup the script

[![Video demonstration](https://img.youtube.com/vi/sddz6n7kdP8/0.jpg)](https://www.youtube.com/watch?v=sddz6n7kdP8)

# How to set up No Splash

- Download the zip from the releases page and extract it
- Move the extracted folder were you want to leave it, the setup will use the current location of the file so if you move it later you will need to run the setup script again
- On the extracted folder run the `setup.vbs` and that's it

# How does this work

Running setup.vbs will replace the target of the opera GX shortcuts in the windows taskbar and start menu with the no_splash.exe path.

The exe will run a script to delete opera_gx_splash.exe before opening Opera GX, preventing it from starting the splash animation

I recommend placing the extracted file on the Opera GX folder %userprofile%\appdata\local\programs\Opera GX. Since the script path will replace the launcher, placing the extracted folder on the Opera GX folder will make it easier to access the app file location

# Converting the bat to exe

To conver the bat to exe you just need to drag your bat on top of the `converter.bat` script

I use the converter script from https://stackoverflow.com/a/51104332/15975589

