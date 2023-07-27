echo off
chcp 65001

echo %date%
echo %time%


:top

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn% 




set /p poi=youtube網址:
echo "%poi%"




yt-dlp --cookies "cookies推特.txt" --restrict-filenames %poi%  

goto top


pause
exit
失敗?
--cookies-from-browser "chrome" 

yt-dlp -F --cookies "cookies推特.txt" --windows-filenames  %poi%  
yt-dlp -F  --windows-filenames --limit-rate 3000K  %poi%  

set /p poi=字串:
echo "%poi%"


start "" yt-dlp -F  --windows-filenames --limit-rate 3000K  %poi% 
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
