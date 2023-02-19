echo off
chcp 65001

set tt=-ss 0:0:0.0 -to 0:0:20.0
set tt0=
echo %tt%

set /p input=檔案:
ffmpeg -i %input% -c:v mpeg4 -y "mpeg4.mkv" 


pause
exit
