@echo off

:: alias
:: Edit primary alias (init) file contents
:: Requires Notepad++ (https://notepad-plus-plus.org/) (optional)

set aliasfile=%dotfiles%\init.cmd
set exepath="%programfiles%\Notepad++\"

if exist %exepath% (
    goto :plusplus
)

:: Windows notepad fallback if Notepad++ is not installed
notepad %aliasfile%
goto :cleanup

:plusplus
start notepad++ %aliasfile%
goto :cleanup

:cleanup
set aliasfile=
set exepath=
goto :EOF