echo off
chcp 65001


set /p input=檔案:
ffmpeg -i %input% -c:v msmpeg4v2 -y "msmpeg4v2.mkv" 


pause
exit
