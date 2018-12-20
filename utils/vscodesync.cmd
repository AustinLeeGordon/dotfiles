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
    code --install-extension austinleegordon.vscode-schema-dot-org
    code --install-extension editorconfig.editorconfig
)

goto :cleanup

:cleanup
set exepath=
set installvscodeextensions=
goto :EOF