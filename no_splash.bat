@echo off

set "pattern=[0-9]*[.][0-9]*[.][0-9]*[.][0-9]*"
set "directory=%userprofile%\AppData\Local\Programs\Opera GX"
set "latest="
for /d %%a in ("%directory%\*") do (
    echo %%a | findstr /R %pattern% > nul && (
        if "%%a" gtr "%latest%" (
            set "latest=%%a"
        ) 
    ) 
)

set "result="
if exist "%latest%\opera_gx_splash.exe" (
    del "%latest%\opera_gx_splash.exe"
    set "result=File deleted"
) else (
    set "result=File not present"
)

echo %TIME% - %latest% - %result% >> "%~dp0task_monitoring.log"

@rem launch opera gx
"%userprofile%\AppData\Local\Programs\Opera GX\launcher.exe"

exit /b 0
