@echo off

:: npp
:: Notepad++ shortcut
:: Requires Notepad++ (https://notepad-plus-plus.org/)

set exepath="%programfiles%\Notepad++\notepad++.exe"

if not exist %exepath% (
    echo You must install Notepad++ https://notepad-plus-plus.org/ in order to use this command
    goto :EOF
)

%exepath% %*
goto :cleanup

:cleanup
set exepath=
goto :EOF