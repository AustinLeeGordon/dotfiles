@echo off

:: hypersync
:: Sync Hyper settings
:: Requires Hyper (https://hyper.is/)

set hyperconfigpath=%userprofile%\.hyper.js

if exist "%hyperconfigpath%" (
    set /p hyperconfigoverwrite="Would you like to overwrite the current .hyper.js file? (y/n):"
) else (
    set hyperconfigoverwrite=y
)

if "%hyperconfigoverwrite%" == "y" (
    copy %dotfiles%\hyper\.hyper.js %userprofile%\.hyper.js
    echo Copied .hyper.js settings
)

set hyperconfigpath=
set hyperconfigoverwrite=