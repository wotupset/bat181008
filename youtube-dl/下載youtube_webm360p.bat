echo off
chcp 65001

:top





set /p poi=youtube網址:
echo %poi%

set nn01=-o yt-webm-%%(title)s-%%(id)s.%%(ext)s
echo %nn01%


yt-dlp --limit-rate 2500K -f bestvideo[ext=webm][height=360]+bestaudio[ext=webm] %nn01% %poi%


goto top



pause
exit
yt-dlp %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]   %poi%

youtube-dl %qq01% -f bestvideo[ext=mp4][height=720][fps=60]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
