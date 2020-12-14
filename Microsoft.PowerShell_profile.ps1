New-Alias which get-command
New-Alias git "C:\Program Files\Git\bin\git.exe"
New-Alias emacs "C:\Program Files\emacs-25.3_1-x86_64\bin\runemacs.exe"

$ProfileRoot = (Split-Path -Parent $MyInvocation.MyCommand.Path)
$env:path += ";$ProfileRoot"