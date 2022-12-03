echo off
chcp 65001


set /p input=檔案:
ffmpeg -i %input% -c:v mpeg4 -y "mpeg4.mkv" 


pause
exit
