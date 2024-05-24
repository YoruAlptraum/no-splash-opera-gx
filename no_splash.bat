@echo off

set "pattern=[0-9]*[.][0-9]*[.][0-9]*[.][0-9]*"
set "directory=%userprofile%\AppData\Local\Programs\Opera GX"
for /d %%a in ("%directory%\*") do (
    echo %%a | findstr /R %pattern% > nul && (
        if exist "%%a\opera_gx_splash.exe" (
            del "%%a\opera_gx_splash.exe"
            set "result=%%a\opera_gx_splash.exe"
        )
    ) 
)

echo %TIME% - %result% >> "%~dp0task_monitoring.log"

@rem launch opera gx
"%userprofile%\AppData\Local\Programs\Opera GX\launcher.exe"

exit /b 0
