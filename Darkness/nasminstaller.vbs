Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "msiexec /i nasm-2.14.02-win32.exe /quiet", 0, True

objShell.CurrentDirectory = "C:\Windows\System32"

objShell.Run "nasm.bat", 1, True