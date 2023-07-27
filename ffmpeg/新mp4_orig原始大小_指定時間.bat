echo off
chcp 65001


set qqq02=-cq 20
set qqq02=-qp 20
set qqq02=

set tt=-ss 0:0:56.2 -to 0:0:57.7
set tt0=
echo %tt%

set /p input=檔案:

ffmpeg %tt% -i %input%   -c:v h264_nvenc -y "h264_nvenc%RANDOM%.mp4" 


pause
exit
set qqq02=-qp 20 
預設20
