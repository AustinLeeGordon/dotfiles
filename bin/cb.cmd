@echo off

:: cb
:: Copy a files contents to the clipboard

set arg1="%1"

if %arg1%=="" goto :help

type %1 | clip
goto :cleanup

:help
echo No args provided
goto :cleanup

:cleanup
set arg1=
goto :EOF