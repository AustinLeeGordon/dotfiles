@echo off

:: cb
:: Clipboard shortcut
:: Requires clipboard-cli (https://github.com/sindresorhus/clipboard-cli)

for /f "delims=" %%a in ('where clipboard.cmd') do @set exepath=%%a

if not exist "%exepath%" (
    echo You must install clipboard-cli https://github.com/sindresorhus/clipboard-cli in order to use this command
    goto :cleanup
)

call %exepath% %*
goto :cleanup

:cleanup
set exepath=
goto :EOF