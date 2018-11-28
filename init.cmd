@echo off

:: Init script for cmd.exe
:: Configures the command line with my settings

:: Add mongo to path
:: Requires Mongo version 4.0.X (https://www.mongodb.com/download-center/enterprise)
set PATH=%path%;"%programfiles%\MongoDB\Server\4.0\bin\"

:: Add variable for dotfiles path
set dotfiles=%userprofile%\projects\dotfiles

:: Bin aliases
set PATH=%path%;%dotfiles%\bin\

:: Navigation aliases
doskey ~=cd %userprofile%
doskey ..=cd ..\$*
doskey ...=cd ..\..\$*
doskey ....=cd ..\..\..\$*

:: Generic aliases
doskey cat=type $*
doskey clear=cls
doskey cp=copy $*
doskey e.=explorer .
doskey ls=dir $*
doskey man=help $*
doskey mv=move $*
doskey pwd=cd
doskey rm=del $*

:: Git aliases
doskey ga=git add $*
doskey ga.=git add . $*
doskey gmm=git merge master $*
doskey gp=git push $*
doskey gpu=git push -u $*
doskey gs=git status $*