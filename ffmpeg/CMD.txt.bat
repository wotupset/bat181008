echo off
chcp 65001
set /p input=檔案:

ffmpeg  %input%  -y - | ffplay -

pause
ffmpeg -hide_banner -hwaccels
cmd




ffmpeg -h encoder=libwebp
ffmpeg -h encoder=mjpeg


pause
cmd



exit

ffmpeg -h encoder=libwebp

ffmpeg -h encoder=libvpx
ffmpeg -h encoder=libvpx-vp9
ffmpeg -h encoder=libopus


顯示檔案內容
type mylist.txt
搜尋輸出的資訊，例如查找系統在監聽的通訊埠
ffmpeg  -hide_banner -encoders | find "nvenc"

ffmpeg -ss 0:0:0.0 -to 0:0:1.0    -i 01.mp4   -vframes 3  %03d.jpg





