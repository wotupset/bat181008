echo off
chcp 65001

set /p input=檔案:

ffprobe  %input%




pause
exit

-show_error -show_format -show_streams