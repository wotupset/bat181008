echo off
chcp 65001


:top

set /p poi=youtube網址:
echo %poi%



set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%

yt-dlp --cookies "cookies推特.txt"  -f 95   %poi%


pause
goto top


exit
start "" 
-f best[height=1080]
-f best[height=720] 

start "" yt-dlp --hls-use-mpegts --no-part %poi%



-o yt-live-%%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s
start "" yt-dlp -f best -o yt-live-%%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%



youtube-dl -f best -o %%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%

-f 301

set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%

youtube-dl -f 301 -o %%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%

youtube-dl -f 301 %poi%


pause
exit