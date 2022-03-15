



:top


set /p poi=youtube網址:
echo %poi%


set qq01=-o yt-best-%%(title)s-%%(id)s.%%(ext)s


yt-dlp.exe %qq01%  -r 3000k -f bestvideo[height=1080]+bestaudio   %poi%



goto top



pause
exit




@echo off

--limit-rate 2M

--cookies=cookiejar.txt

裁剪秒數 但依然要下載完整影片
youtube-dl --postprocessor-args "-ss 0:9:0 -to 0:9:10" https://www.youtube.com/watch?v=OCmqTRHOLNw



youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
