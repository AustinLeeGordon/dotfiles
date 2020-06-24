@echo off

:: gitsync
:: Sync Git settings
:: Requires Git (https://git-scm.com/downloads)

set gitconfigpath=%userprofile%\.gitconfig
set gitmessagepath=%userprofile%\.gitmessage

if exist "%gitconfigpath%" (
    set /p gitconfigoverwrite="Would you like to overwrite the current .gitconfig file? (y/n):"
) else (
    set gitconfigoverwrite=y
)

if "%gitconfigoverwrite%" == "y" (
    copy %dotfiles%\git\gitconfig %userprofile%\.gitconfig
    echo Copied .gitconfig settings
)

if exist "%gitmessagepath%" (
    set /p gitmessageoverwrite="Would you like to overwrite the current .gitmessage file? (y/n):"
) else (
    set gitmessageoverwrite=y
)

if "%gitmessageoverwrite%" == "y" (
    copy %dotfiles%\git\gitmessage %userprofile%\.gitmessage
    git config --global commit.template %userprofile%\.gitmessage
    echo Copied .gitmessage settings
)

set gitconfigpath=
set gitconfigoverwrite=
set gitmessagepath=
set gitmessageoverwrite=