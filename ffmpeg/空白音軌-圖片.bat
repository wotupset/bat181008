set /p input=ÀÉ®×:

ffmpeg -y -i %input% -f lavfi -i anullsrc -pix_fmt yuv420p  -t 5 "h264_anullsrc_pic.mp4"


pause
exit

-map 0:a -map 1:v 
-c:v copy -c:a aac

ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9 -b:v 0 -crf 10  "vp9_crf10.webm"

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

