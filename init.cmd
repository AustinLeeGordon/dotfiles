@echo off
:: Init script for cmd.exe (proposed fast version, 2026-11-19)
:: 1) Skip everything for non-interactive "cmd /c ..." calls (tools, shims, scripts).
::    Pure string test: starts no extra process.
:: 2) Load all doskey macros with ONE doskey.exe call instead of ~40.
:: 3) Don't re-append dotfiles\bin (it is already on the user PATH).

set "_ccl=%CMDCMDLINE:"=%"
if /i not "%_ccl: /c =%"=="%_ccl%" (set "_ccl=" & goto :eof)
set "_ccl="

set "dotfiles=%USERPROFILE%\Code\dotfiles"
doskey /macrofile="%dotfiles%\macros.doskey"
