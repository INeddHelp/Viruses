@echo off 

REM Find the names of the keyboard devices
for /f "tokens=2" %%a in ('wmic path Win32_Keyboard get DeviceID /value ^| find "="') do (
  set "keyboard=%%a"
  
  REM Disable the keyboard device
  devcon.exe disable %keyboard%
)

timeout /t 5
' wait 5 secs
shutdown /s /t 0