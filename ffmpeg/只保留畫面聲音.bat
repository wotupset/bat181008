set /p input=檔案:


ffmpeg -i %input%  -dn -sn -c:v copy -c:a copy  -y "skip_data.mkv"


pause
exit

-map 0:v -map 0:a

The -vn / -an / -sn / -dn options can be used to skip inclusion of video, audio, subtitle and data
-map_chapters -1



-ss 0:1:18.0 -to 0:4:0.0 


ffmpeg  -i %input% -c:v libvpx-vp9  -crf 0 -b:v 0 -y  "vp9_lossless.webm"


-ss 0:0:0.0 -to 0:0:19.5
You can use -crf 0 to create a lossless video.


//28MB
ffmpeg -y -i %input% -c:v ffv1 "ffv1_lossless.mkv"  
//18MB
ffmpeg -y -i %input% -c:v libvpx-vp9  -crf 0 -b:v 0  "vp9_lossless.webm"
//16MB
ffmpeg -y -i %input% -c:v libx264  -crf 0 -b:v 0  "h264_lossless.mp4"



-pix_fmt yuv420p

out%Y-%m-%d_%H-%M-%S.mp4

會以三位數字，自動編號的檔名。
ffmpeg -i input.mp4 -map 0 -c copy -f segment -segment_time 1800 -reset_timestamps 1 output_%03d.mp4

-c copy -f segment -segment_time 1800 -reset_timestamps 1


ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -lossless 1  -vf "scale=800:800:force_original_aspect_ratio=decrease" "vp9_lossless.webm"


ffmpeg -y -i "%input%"  -crf 10 -b:v 0k  "h264_lossless.mp4"


ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -lossless 1  "vp9_lossless.webm"

ffmpeg -y -i "%input%"  -crf 10 -b:v 0k  "h264_lossless.mp4"


ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9 -crf 10 -b:v 0  "vp9_crf10.webm"

ffmpeg -y  -i "%input%" -map_chapters -1 -map_metadata -1    "h264_lossless.mp4"

ffmpeg -y  -i "%input%" -map_chapters -1 -map_metadata -1  -c:v copy  "h264_lossless.mp4"



ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9  -lossless 1  "vp9_lossless.webm"



ffmpeg -y      -i "%input%"    -c:v libvpx-vp9 -crf 10  "vp9_crf10.webm"
ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9 -crf 10 -b:v 0  "vp9_crf10.webm"



ffmpeg -y  -i %input% -crf 5   "h264_lossless.mp4"

ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

ffmpeg -y -i "%input%" -c:v copy -an  "webm_copy.webm"
-lossless 1
 -crf 10 -b:v 0k
-ss 00:0:6.5 -to 00:0:12.5


ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"
ffmpeg -y -i "%input%" -crf 0   "h264_lossless.mp4"
ffmpeg -y -i "%input%" -c:v copy  "h264_lossless.mp4"

ffmpeg -y  -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

