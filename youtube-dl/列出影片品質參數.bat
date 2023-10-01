echo off
chcp 65001

:top
set /p poi=youtube網址:
echo %poi%



yt-dlp -F %poi%

goto top
pause
exit
youtube-dl -F %poi%
cmd

youtube-dl -F https://www.youtube.com/watch?v=BtYnc-x0n0Y

youtube-dl --list-subs https://www.youtube.com/watch?v=vsCO7C416bs

cmd


