@echo off

@REM This variable is the path to your Opera GX folder
@REM Edit this if you have Opera GX installed in a different directory
set "directory=%userprofile%\AppData\Local\Programs\Opera GX"

for /d %%a in ("%directory%\*") do (
    if exist "%%a\opera_gx_splash.exe" (
        del "%%a\opera_gx_splash.exe"
        set "result=%%a\opera_gx_splash.exe"
    )
)

echo %TIME% - %result% >> "%~dp0task_monitoring.log"

@rem launch opera gx
"%directory%\launcher.exe"

exit /b 0
