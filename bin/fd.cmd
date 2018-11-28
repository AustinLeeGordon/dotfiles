@echo off

:: fd
:: Alternative to find
:: Requires fd (https://github.com/sharkdp/fd)

set exepath=%dotfiles%\lib\fd\fd.exe

if not exist %exepath% (
    echo You must install fd https://github.com/sharkdp/fd in order to use this command
    goto :cleanup
)

%exepath% %*
goto :cleanup

:cleanup
set exepath=
goto :EOF