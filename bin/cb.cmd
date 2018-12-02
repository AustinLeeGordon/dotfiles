@echo off

:: cb
:: Copy a files contents to the clipboard

if [%1]==[] goto :help

type %1 | clip
goto :EOF

:help
echo No args provided
goto :EOF