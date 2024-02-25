@echo off

@REM  30 seconds delay, mmmm:ss format
set "delay=0000:25"

schtasks /create /tn "no_splash" /tr "%~dp0no_splash.bat" /sc ONLOGON /ru %USERNAME% /delay %delay%

exit /b 0