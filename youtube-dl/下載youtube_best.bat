echo off
chcp 65001




set /p poi=youtube網址:
echo %poi%

set nn01=-o yt-best-%%(title)s-%%(id)s.%%(ext)s
echo %nn01%


yt-dlp --limit-rate 5000K  -f best  "%poi%"





pause
exit




-f best
--windows-filenames 只留下winsdow接受的檔名字元
--restrict-filenames 更嚴格的檔案名稱


:top
goto top

exit


-f best
yt-dlp %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]   %poi%

youtube-dl %qq01% -f bestvideo[ext=mp4][height=720][fps=60]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
