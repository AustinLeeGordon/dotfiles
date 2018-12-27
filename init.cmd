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

:: Shortcuts
doskey dl=cd %userprofile%\Downloads
doskey dt=cd %userprofile%\Desktop
doskey db=cd "%userprofile%\Dropbox (Hutson Inc)"
doskey p=cd %userprofile%\projects
doskey dot=cd %dotfiles%

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
doskey gb=git branch $*
doskey gc=git commit $*
doskey gcm=git commit -m $*
doskey gco=git checkout $*
doskey gmm=git merge master $*
doskey gpl=git pull $*
doskey gpu=git push $*
doskey gpuu=git push -u $*
doskey gpuuo=git push -u origin $*
doskey gs=git status -s $*

:: NPM aliases
doskey nr=npm run $*

:: VS Code aliases
doskey c.=code .
doskey code.=code .