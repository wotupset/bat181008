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



:top


set /p poi=youtube網址:
echo %poi%


set qq01=-o yt-bestvideo-%%(title)s-%%(id)s.%%(ext)s
echo %qq01%

yt-dlp.exe --limit-rate 2500K -f bestvideo[ext=mp4][height=1080]+bestaudio[ext=m4a]/bestvideo[ext=mp4][width=1080]+bestaudio[ext=m4a]  %poi%
echo off
chcp 65001



goto top



pause
exit
-f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]



@echo off

--limit-rate 2M

--cookies=cookiejar.txt

裁剪秒數 但依然要下載完整影片
youtube-dl --postprocessor-args "-ss 0:9:0 -to 0:9:10" https://www.youtube.com/watch?v=OCmqTRHOLNw



youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
