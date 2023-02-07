Const CSIDL_COMMON_DESKTOPDIRECTORY = &H19
Const SPIF_UPDATEINIFILE = &H1
Const SPIF_SENDWININICHANGE = &H2
Const DESKTOP_BACKGROUND = &H0&

Dim objFSO, objFolder
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetSpecialFolder(CSIDL_COMMON_DESKTOPDIRECTORY)

strFile = objFolder & "\wp11484003.jpg"

objFSO.CopyFile "C:\Windows\System32\wp11484003.jpg", strFile, True

Set objShell = CreateObject("WScript.Shell")
objShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", strFile, "REG_SZ"
objShell.Run "rundll32.exe user32.dll, UpdatePerUserSystemParameters", 1, True

Set objShell = Nothing
Set objFSO = Nothing