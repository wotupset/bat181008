set /p input=檔案:

ffmpeg  -i "%input%" -filter:v "setpts=0.5*PTS"  -c:v h264_nvenc  -cq 30 -pix_fmt yuv420p -y 加速慢速.mp4

pause
exit
 -an

-filter:v "setpts=5.0*PTS" 慢速.webm
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

