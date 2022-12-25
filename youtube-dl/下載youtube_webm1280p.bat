
chcp 65001

:top

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%



set /p poi=youtube網址:
echo %poi%

yt-dlp  -f bestvideo[ext=webm][height=1280]+bestaudio[ext=webm] -o _webm_%%(id)s %poi%


goto top



pause
exit

yt-dlp  -f bestvideo[ext=webm][height=1280]+bestaudio[ext=webm] -o _720p_%nnn%_%%(id)s  %poi%

yt-dlp %qq01% -f bestvideo[ext=mp4][height=720]+bestaudio[ext=m4a]   %poi%

youtube-dl %qq01% -f bestvideo[ext=mp4][height=720][fps=60]+bestaudio[ext=m4a]   %poi%


youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
