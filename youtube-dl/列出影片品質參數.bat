echo off
chcp 65001

:top
set /p poi=youtube網址:
echo %poi%



youtube-dl -F %poi%

goto top
pause
exit
cmd

youtube-dl -F https://www.youtube.com/watch?v=BtYnc-x0n0Y

youtube-dl --list-subs https://www.youtube.com/watch?v=vsCO7C416bs

cmd


