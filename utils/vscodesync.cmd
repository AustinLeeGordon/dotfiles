@echo off

:: vscodesync
:: Sync VS Code settings and install extensions
:: Requires VS Code (https://code.visualstudio.com/)

for /f "delims=" %%a in ('where code.cmd') do @set exepath=%%a

if not exist "%exepath%" (
    echo You must install VS Code https://code.visualstudio.com/ in order to use this command
    goto :cleanup
)

set /p installvscodeextensions="Would you like to install VS Code extensions? (y/n):"

if "%installvscodeextensions%" == "y" (
    code --install-extension sdras.night-owl
    code --install-extension mikestead.dotenv
    code --install-extension wix.vscode-import-cost
    code --install-extension esbenp.prettier-vscode
)

set /p vscodeconfigoverwrite="Would you like to overwrite the VS Code user settings file? (y/n):"

if "%vscodeconfigoverwrite%" == "y" (
    copy %dotfiles%\vscode\settings.js %appdata%\Code\User\settings.js
    echo Copied VS Code user settings
)

goto :cleanup

:cleanup
set exepath=
set installvscodeextensions=
goto :EOF