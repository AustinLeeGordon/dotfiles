@echo off

:: chx
:: Opens Chrome with a clean temporary profile
:: Requires:
::   - Chrome (https://www.google.com/chrome/)

set tmppath=\Temp\chromeprofile

if exist %tmppath% (
    rmdir /s /q %tmppath%
)

mkdir %tmppath%

start chrome --user-data-dir=%tmppath% %*
goto :cleanup

:cleanup
set tmppath=
goto :EOF