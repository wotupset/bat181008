@echo off


:top


set /p poi=youtube���}:
echo %poi%


set qq01=-o yt-%%(title)s-%%(id)s.%%(ext)s

youtube-dl %qq01% -f "[height<=720]"  %poi%



goto top



pause
exit
youtube-dl %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
