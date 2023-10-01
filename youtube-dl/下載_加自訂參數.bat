echo off
chcp 65001


:top


set /p poi=youtube網址::
echo %poi%

yt-dlp -F %poi%

set /p aa1=影片品質::
echo %aa1%

yt-dlp --limit-rate 3000K --windows-filenames --cookies "cookies推特.txt"  -f %aa1% %poi%



goto top



pause
exit
--windows-filenames 只留下winsdow接受的檔名字元
--restrict-filenames 更嚴格的檔案名稱

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
