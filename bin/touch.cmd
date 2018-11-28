@echo off

:: touch
:: UNIX touch command
:: Requires node-touch (https://github.com/isaacs/node-touch)

for /f "delims=" %%a in ('where nodetouch.cmd') do @set exepath=%%a

if not exist "%exepath%" (
    echo You must install node-touch https://github.com/isaacs/node-touch in order to use this command
    goto :cleanup
)

call %exepath% %*
goto :cleanup

:cleanup
set exepath=
goto :EOF