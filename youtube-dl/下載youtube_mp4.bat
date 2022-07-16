@echo off


:top


set /p poi=youtubeºô§}:
echo %poi%

yt-dlp  -f best   %poi%


goto top



pause
exit
yt-dlp %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]   %poi%

youtube-dl %qq01% -f bestvideo[ext=mp4][height=720][fps=60]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
