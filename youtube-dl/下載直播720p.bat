echo off
chcp 65001

set /p poi=youtube網址:
echo %poi%



:top

echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%


start "" yt-dlp  %poi% -f best  -o "_%%(id)s_%nnn%_best.%%(ext)s"
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