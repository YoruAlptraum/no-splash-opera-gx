# No Splash Opera GX

Usually the splash screen on startup can only be completely prevented when deleting the splash exe file on browser local folder and this needs to be done every time the browser updates

This script will automatically delete it for you when starting the browser

# Video demonstrating how to setup the script

[![Video demonstration](https://img.youtube.com/vi/sddz6n7kdP8/0.jpg)](https://www.youtube.com/watch?v=sddz6n7kdP8)

# How to set up No Splash

- Download the zip from the releases page and extract it
- Move the extracted folder to the Opera GX folder, the default location is `%userprofile%\AppData\Local\Programs\Opera GX`
- Pin Opera GX to your taskbar (if you don't have it already pinned)
- On the extracted folder run the `setup.vbs` and that's it

# How does this work

Running setup.vbs will replace the target of the opera GX shortcuts in the windows taskbar and start menu with the `run_no_splash.vbs` path

The script will run `no_splash.bat` script to delete `opera_gx_splash.exe` before opening Opera GX, preventing it from starting the splash animation

You need to have Opera GX pinned to your taskbar before running `setup.vbs` to avoid issues as the script will replace the path on the current shortcut

If you encounter any issues with the script feel free to let me know
