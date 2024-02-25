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

del "%latest%\opera_gx_splash.exe"

exit /b 0
