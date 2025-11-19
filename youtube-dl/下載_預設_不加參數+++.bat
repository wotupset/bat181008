echo off
chcp 65001

:top

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



set /p poi=youtube網址:
echo "%poi%"


yt-dlp --cookies "cookies推特.txt" --restrict-filenames --limit-rate 3000K  -o "%nnn%,%%(id)s下載.%%(ext)s"  %poi% 



goto top



pause
exit
-f bestvideo[vcodec=vp9]+bestaudio[acodec=opus]


-f bestvideo[ext=mp4]+bestaudio[ext=m4a]
-f bestvideo[vcodec=vp9]+bestaudio[acodec=opus]

yt-dlp  --restrict-filenames --limit-rate 3000K -f bestvideo[vcodec=vp9]+bestaudio[acodec=opus] -o ",%%(id)s下載%nnn%.%%(ext)s"  %poi% 



start "" yt-dlp  --restrict-filenames --limit-rate 3000K   %poi% 


--cookies "cookies推特.txt"


-o "下載預設%nnn%.%%(ext)s"

-o "%%(live_status)s+%nnn%+%%(id)s.%%(ext)s"
--windows-filenames 只留下winsdow接受的檔名字元
--restrict-filenames 更嚴格的檔案名稱



--continue
 --cookies=cookiejar
-o "%nnn%.mkv"

--download-sections??


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
