echo off
chcp 65001



set /p poi=youtube網址::
echo %poi%



set tt="*0:38:0.0-0:41:0.0"
set tt="*0:3:0.0-0:5:0.0"
echo %tt%

pause


yt-dlp --cookies "cookies推特.txt"  --limit-rate 3000K  --download-sections %tt%  %poi%




pause
exit

set poi=^
https://www.youtube.com/watch?v=vJds_pki9vU
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
