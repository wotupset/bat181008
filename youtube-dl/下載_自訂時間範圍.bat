echo off
chcp 65001

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set "rand=%RANDOM%"
set "rand=00000%RANDOM%"
set "rand=%rand:~-5%"

set nnn=%vardate%_%vartime%_%rand%
echo %nnn%


set poi=^
https://www.youtube.com/watch?v=22dnrF5ypPY


echo "%poi%"




set tt=--download-sections "*0:31:0.0-0:34:30.0"
set tt=--download-sections "*0:1:35.30-0:1:0.0"
set tt=--download-sections "*0:13:0.0-0:15:0.0"
set tt=--download-sections "*0:38:30.0-0:40:30.0"
set tt0=--download-sections "*100-200"

echo %tt%

set ff=-f 232+140
set ff=-f 243+251-drc
set ff=-f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]/bestvideo[ext=mp4][width=720]+bestaudio[ext=m4a]
set ff0=-f bestvideo[vcodec=vp9][height=720]+bestaudio[acodec=opus]/bestvideo[vcodec=vp9][width=720]+bestaudio[acodec=opus]
set ff0=-f best
set ff=-f bestvideo[ext=mp4][height=1080]+bestaudio[ext=m4a]
set ff=
echo %ff%


yt-dlp  %tt%   %ff% --limit-rate 4000K   -o _切+%nnn%-%%(id)s.%%(ext)s %poi%





pause
exit
-f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]


set ff=-f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]/bestvideo[ext=mp4][width=720]+bestaudio[ext=m4a]
set ff=-f bestvideo[vcodec=vp9][height=720]+bestaudio[acodec=opus]/bestvideo[vcodec=vp9][width=720]+bestaudio[acodec=opus]



 --cookies "cookies推特.txt"
 -f best
--force-keyframes-at-cuts 
This is slow due to needing a re-encode 幫助有限
https://github.com/yt-dlp/yt-dlp

-f 312+140
--force-keyframes-at-cuts 

-f best
yt-dlp --limit-rate 3000K   --download-sections %tt%  -f 22 --force-keyframes-at-cuts  %poi%

--force-keyframes-at-cuts


 --cookies "cookies推特.txt" 
set poi=^
https://www.youtube.com/watch?v=JpnyuIMHCVg
echo %poi%

set /p poi=youtube網址::
echo %poi%



echo "需要手動輸入 再解除pause"
pause




-f best
--limit-rate 2500K
-f 299+140

start "" yt-dlp --limit-rate 2500K  --download-sections %tt%  %poi%

set /p poi=youtube網址:
:top
goto top


有時無法下載要用best
start "" yt-dlp --limit-rate 2500K  -f best --download-sections "*0:0:0.0-0:3:10.0"  %poi%


--download-sections "*0:0:0-0:0:0" 


--force-keyframes-at-cuts


-f 302+251
-f 298+140 
-f 243+251


yt-dlp -r 1M -f best   %poi%

yt-dlp -r 3000k   %poi%


-c, --continue 
Force resume of partially downloaded files. By default, youtube-dl will resume downloads if possible.
-r, --rate-limit 
LIMIT Maximum download rate in bytes per second (e.g. 50K or 4.2M)


youtube-dl  %poi%


--limit-rate 2M

--cookies=cookiejar.txt

裁剪秒數 但依然要下載完整影片
youtube-dl --postprocessor-args "-ss 0:9:0 -to 0:9:10" https://www.youtube.com/watch?v=OCmqTRHOLNw



youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
