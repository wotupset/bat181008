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
echo %poi%





yt-dlp  --limit-rate 2500K -f best*[vcodec!=none][acodec!=none][audio_channels!=none][asr!=none] %poi% -o yt-快速-%nnn%-%%(id)s.%%(ext)s

goto top



pause
exit

best*[vcodec!=none][acodec!=none]

set nn01=-o yt-best-%%(title)s-%%(id)s.%%(ext)s
echo %nn01%

 -f 22
yt-dlp  --limit-rate 2500K -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a] %poi% 
yt-dlp %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]/bestvideo[ext=mp4][width=720]+bestaudio[ext=m4a] %poi%

youtube-dl %qq01% -f bestvideo[ext=mp4][height=720][fps=60]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
