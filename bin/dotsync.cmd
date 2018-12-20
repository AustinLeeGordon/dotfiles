@echo off

:: dotsync
:: Sync dotfiles config

:: Sync Git setup
call %dotfiles%\utils\gitsync.cmd

:: Sync Hyper setup
call %dotfiles%\utils\hypersync.cmd

:: Sync VS Code setup
call %dotfiles%\utils\vscodesync.cmd

:: Sync NPM setup
call %dotfiles%\utils\npmsync.cmd

echo Sync completed.
goto :EOF