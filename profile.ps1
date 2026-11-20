# PowerShell 7 profile: interactive shortcuts ported from dotfiles\macros.doskey (2026-11-20)
# Lives in dotfiles; the OneDrive $PROFILE only dot-sources this file.
# Skips everything for non-interactive runs (pwsh -c / -File / -NonInteractive, e.g. Claude's
# PowerShell tool and scripts), so short names like gc/gcm keep their built-in meaning there.

$_a = [Environment]::GetCommandLineArgs()
if ($Host.Name -ne 'ConsoleHost' -or ($_a | Where-Object { $_ -match '^-(c|command|f|file|noni|noninteractive|e|encodedcommand)$' })) {
    Remove-Variable _a; return
}
Remove-Variable _a

# Navigation
function ~    { Set-Location $HOME }
function ..   { Set-Location .. }
function ...  { Set-Location ..\.. }
function .... { Set-Location ..\..\.. }
function dl   { Set-Location "$HOME\Downloads" }
function dt   { Set-Location "$HOME\Desktop" }
function db   { Set-Location "$HOME\Dropbox (Hutson Inc)" }
function c    { Set-Location "$HOME\Code" }
function dot  { Set-Location "$HOME\Code\dotfiles" }
function e.   { explorer . }
function c.   { code . }
function code. { code . }
# ls, cat, cp, mv, rm, pwd, clear, man already exist as PowerShell aliases.

# Git (built-in aliases gc / gcm are replaced in interactive shells only)
Remove-Item Alias:gc, Alias:gcm -Force -ErrorAction SilentlyContinue
function ga    { git add @args }
function ga.   { git add . @args }
function gb    { git --no-pager branch @args }
function gc    { git commit @args }
function gcm   { git commit -m @args }
function gco   { git checkout @args }
function gmm   { git merge master @args }
function gpl   { git pull @args }
function gpu   { git push @args }
function gpuu  { git push -u @args }
function gpuuo { git push -u origin @args }
function gs    { git status -s @args }

# npm
function nr  { npm run @args }
function nrd { npm run dev }
function nrs { npm run start }
function nrt { npm run test }

function weather { curl.exe "wttr.in/$($args -join ' ')" }
