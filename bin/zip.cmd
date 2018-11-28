@echo off

:: zip
:: 7-Zip shortcut
:: Requires 7-Zip (https://www.7-zip.org/)

set exepath="%programfiles%\7-Zip\7z.exe"

if not exist %exepath% (
    echo You must install 7-Zip https://www.7-zip.org/ in order to use this command
    goto :cleanup
)

%exepath% %*
goto :cleanup

:cleanup
set exepath=
goto :EOF