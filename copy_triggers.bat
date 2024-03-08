@echo off
set "source_task=Opera GX scheduled Autoupdate 1699973132"
set "destination_task=no_splash"

schtasks /query /TN "%source_task%" /XML > temp.xml


@REM this checks info on the temp.xml file generated

for /f "delims=:" %%i in ('findstr /n /c:"<Triggers>" "temp.xml"') do (
    set "start_line=%%i"
    set /a "start_line-=1"
)

for /f "delims=:" %%i in ('findstr /n /c:"</Triggers>" "temp.xml"') do (
    set "end_line=%%i"
    echo end is %end_line%
)

setlocal ENABLEDELAYEDEXPANSION

set "counter=%start_line%"

for /F "skip=%start_line% delims=" %%a in ('type temp.xml') do (
    if !counter! lss %end_line% (
        echo %%a >> temp_triggers.xml
        set /a counter+=1
        echo !counter!
    ) else (
        echo goto end
        goto :eof
    )
)

endlocal

:end

echo end counter %counter%


@REM schtasks /create /XML temp_triggers.xml /TN "%destination_task%"

@REM del temp.xml temp_triggers.xml
