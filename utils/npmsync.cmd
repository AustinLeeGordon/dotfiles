@echo off

:: npmsync
:: Install global NPM packages
:: Requires Node (https://nodejs.org/en/)

for /f "delims=" %%a in ('where npm.cmd') do @set exepath=%%a

if not exist "%exepath%" (
    echo You must install Node https://nodejs.org/en/ in order to use this command
    goto :cleanup
)

set installpackages=false
set packagelist=

set /p installnpmpackages="Would you like to install global NPM packages? (y/n):"

if "%installnpmpackages%" == "y" (
    set installpackages=true
    set packagelist=empty-trash touch public-ip-cli serve trash-cli wt-cli
)

set /p installworknpmpackages="Would you like to install work global NPM packages? (y/n):"

if "%installworknpmpackages%" == "y" (
    set installpackages=true
    set packagelist=%packagelist% file-ranger gatsby-cli generator-hutson
)

if "%installpackages%" == "true" (
    echo Installing %packagelist%
    npm install --global %packagelist%
)

goto :cleanup

:cleanup
set exepath=
set installnpmpackages=
set installpackages=
set installworknpmpackages=
set packagelist=
goto :EOF