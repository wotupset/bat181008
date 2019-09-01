set input=merge.mp4

ffmpeg -y -i "%input%"   -an  -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

pause
exit

-lossless 1
 -crf 10 -b:v 0k
-ss 00:0:6.5 -to 00:0:12.5


ffmpeg -y -i "%input%" -ss 00:0:17.0 -to 00:0:25.0   -crf 0   "h264_lossless.mp4"


ffmpeg -y -i "%input%"  -ss 00:0:10.8 -to 00:0:14.8  -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"
