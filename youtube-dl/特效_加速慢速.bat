echo off
chcp 65001

set /p input=檔案:

ffmpeg  -i %input% -filter:v "setpts=2.0*PTS" -an -c:v h264_nvenc -cq 10 -r 30  -pix_fmt yuv420p -y 加速慢速.mp4

pause
exit

ffmpeg  -i %input% -filter:v "setpts=2.0*PTS" -an -c:v h264_nvenc -cq 10  -r 30  -pix_fmt yuv420p -y 加速慢速.mp4


 -fps_mode passthrough 
ffmpeg  -i %input% -filter:v "setpts=5.0*PTS" -an -c:v h264_nvenc -cq 10  -r 10  -pix_fmt yuv420p -y 加速慢速.mp4


-cq 20
-r 30  變速後 fps也要改變

視頻加速
"setpts=0.1*PTS"
音頻加速
-af "atempo=2.0"


asetpts
-af "atempo=2.0"
-vf "setpts=0.5*PTS"
-filter:v "setpts=0.5*PTS"
 -an
 -an

-filter:v "setpts=2.0*PTS" 慢速.webm
-filter:v "setpts=0.5*PTS" 加速.webm



ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -crf 10  "vp9_crf10.webm"




ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

ffmpeg -y -i "%input%" -c:v copy -an  "webm_copy.webm"
-lossless 1
 -crf 10 -b:v 0k
-ss 00:0:6.5 -to 00:0:12.5


ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"
ffmpeg -y -i "%input%" -crf 0   "h264_lossless.mp4"
ffmpeg -y -i "%input%" -c:v copy  "h264_lossless.mp4"

ffmpeg -y  -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

