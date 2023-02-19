echo off
chcp 65001


set qqq02=-cq 30
set qqq02=-qp 30
set qqq02=


set tt=-ss 0:0:4.0 -to 0:19:5.0
set tt0=
echo %tt%

set /p input=檔案:
ffmpeg %tt% -i %input%   -c:v h264_nvenc -y "h264_nvenc%RANDOM%.mp4" 


pause
exit
