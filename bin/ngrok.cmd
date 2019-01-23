@echo off

:: ngrok
:: Opens Chrome to the ngrok dashboard and calls ngrok
:: Requires:
::   - ngrok (https://ngrok.com/)
::   - Chrome (https://www.google.com/chrome/)

set exepath=%dotfiles%\lib\ngrok\ngrok.exe

if not exist %exepath% (
    echo You must install ngrok https://ngrok.com/ in order to use this command
    goto :cleanup
)

if [%1]==[] goto :help
if [%1]==[help] goto :nochrome
if [%1]==[--help] goto :nochrome
if [%1]==[-h] goto :nochrome
if [%2]==[--help] goto :nochrome
if [%2]==[-h] goto :nochrome

start chrome "http://127.0.0.1:4040" && %exepath% %*
goto :cleanup

:nochrome
%exepath% %*
goto :cleanup

:help
%exepath% help
goto :cleanup

:cleanup
set exepath=
goto :EOF