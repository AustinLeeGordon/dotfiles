@echo off

:: dotsync
:: Sync dotfiles config

:: Sync Git settings
call %dotfiles%\utils\gitsync.cmd

:: Sync Hyper settings
call %dotfiles%\utils\hypersync.cmd