@echo off


:top


set /p poi=youtubeºô§}:
echo %poi%




youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%



goto top



pause
exit

-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
