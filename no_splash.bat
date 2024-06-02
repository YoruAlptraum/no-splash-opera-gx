@echo off

for %%I in (.) do set "directory=%%~dpI"

for /d %%a in ("%directory%\*") do (
    if exist "%%a\opera_gx_splash.exe" (
        del "%%a\opera_gx_splash.exe"
        @REM set "result=%%a\opera_gx_splash.exe"
    )
)

@REM echo %TIME% - %result% >> %~dp0\task_monitoring.log"

@rem launch opera gx
"%directory%\launcher.exe"

exit /b 0
