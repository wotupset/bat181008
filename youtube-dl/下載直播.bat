echo off
chcp 65001


:top

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_
echo %nnn% 


set /p poi=youtube網址:
echo %poi%


start "" yt-dlp %poi%  --restrict-filenames  -o "%%(live_status)s+%nnn%+%%(id)s.%%(ext)s"

pause
pause
cls
goto top


exit

--restrict-filenames  -o "%%(live_status)s+%nnn%+%%(id)s.%%(ext)s"


set nnn=%%(timestamp)s
set nnn=%%(upload_date)s-%%(upload_time)s


-o "LIVE+%nnn%.mkv"
%%(title)s

--restrict-filenames
自動將不合法的字元替換為下劃線（_）或刪除它們



start "" yt-dlp    %poi%
set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%




yt-dlp    %poi%
start "" yt-dlp    %poi%
-f best
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