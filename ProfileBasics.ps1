########## FAKE COMMANDS ##########
#
# No scripts should be started from here
# This section is just for functions that look like PS cmdlets and do specific, discrete things

function Get-Version() { $PSVersionTable }
function Show-Env() { Get-ChildItem env: }
function Show-Path() { $env:path.Split(";") | sort Name }
function Show-PSHistory() { Start-Process "C:\Program Files\Notepad++\notepad++.exe" -ArgumentList {"C:\Users\pkelly\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt" } }

########## FUNCTIONS ##########
#
# Just some functions to make life easier

function open($dir) { If ($dir) { $exists = Test-Path $dir; If ($exists -eq $true) { explorer.exe "$dir" } Else { Write-Host "$dir does not exist" } } Else { explorer.exe . } }
