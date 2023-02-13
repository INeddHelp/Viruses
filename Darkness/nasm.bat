@echo off
cd /d %windir%\system32
nasm -f bin -o blackscreen.com blackscreen.asm
blackscreen.com