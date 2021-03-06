# Fix powershells broken tab behavior
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Unix style aliases
New-Alias which get-command
new-alias grep findstr

# Command aliases
New-Alias emacs "C:\Program Files\emacs-25.3_1-x86_64\bin\runemacs.exe"
# NOTE git alias no longer necessary, reinstall git and let the installer modify PATH
#New-Alias git "C:\Program Files\Git\bin\git.exe"

# Make this folder part of part, so that script files in it can be executed as commands
$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot"