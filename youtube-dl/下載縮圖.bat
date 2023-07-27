echo off
chcp 65001

set /p poi=youtube網址:
echo %poi%




yt-dlp --write-thumbnail --skip-download  %poi%





pause
exit

https://img.youtube.com/vi/rAlymhPyKhQ/maxresdefault.jpg

youtube-dl --get-thumbnail %poi%
youtube-dl --list-thumbnails %poi%
youtube-dl --write-thumbnail --skip-download  %poi%


youtube-dl --write-sub --sub-lang zh-Hant  --convert-subs srt --skip-download https://www.youtube.com/watch?v=vsCO7C416bs


