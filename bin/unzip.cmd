@echo off

:: unzip
:: Uses 7-Zip to unzip files
:: Requires 7-Zip (https://www.7-zip.org/)

set exepath="%programfiles%\7-Zip\7z.exe"

if not exist %exepath% (
    echo You must install 7-Zip https://www.7-zip.org/ in order to use this command
    goto :cleanup
)

set arg1="%1"

if %arg1%=="" goto :help
if %arg1%=="." goto :unzipall
goto :unzip

:help
echo No args provided
goto :cleanup

:unzip
%exepath% x %1 -o*
goto :cleanup

:unzipall
%exepath% x *.zip -o*
goto :cleanup

:cleanup
set arg1=
set exepath=
goto :EOF