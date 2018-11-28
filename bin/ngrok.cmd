@echo off

:: ngrok
:: Opens Chrome to the ngrok dashboard and calls ngrok
:: Requires:
::   - ngrok (https://ngrok.com/)
::   - chrome (https://www.google.com/chrome/)

set exepath=%dotfiles%\lib\ngrok\ngrok.exe

if not exist %exepath% (
    echo You must install ngrok https://ngrok.com/ in order to use this command
    goto :cleanup
)

set arg1="%1"

if %arg1%=="" goto :help

start chrome "http://127.0.0.1:4040" && %exepath% %*
goto :cleanup

:help
echo No args provided
goto :cleanup

:cleanup
set arg1=
set exepath=
goto :EOF