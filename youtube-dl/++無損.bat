echo off
chcp 65001

set /p input=檔案:

set tt=-ss 0:0:0.0 -to 0:0:30.0
set tt=-ss 0:4:9.75 -to 0:4:11.4
set tt0=
echo %tt%


ffmpeg %tt% -accurate_seek  -i %input% -c:v copy -c:a copy -avoid_negative_ts 1  -y "_lossless.mkv" 




pause
exit


accurate_seek必须放在-i参数之前 
-accurate_seek 這是預設行為
-noaccurate_seek 

如果编码格式采用的copy 最好加上-avoid_negative_ts 1参数
-avoid_negative_ts 1 

ffmpeg %tt% -i %input%  -sn -dn  -crf 0 -b:v 0  -y "_lossless.mkv" 

ffmpeg %tt% -i %input% -c:v ffv1 -y "ffv1_lossless.mkv"  
ffmpeg %tt% -i %input% -c:v copy -c:a copy -sn -dn    -y "_lossless.mkv" 

-shortest -fflags +shortest -max_interleave_delta 100M 
-seek_timestamp 1 
-c:v copy -c:a copy
&& ffplay.exe "_lossless.mkv"
&& ffprobe "_lossless.mkv"


-copyts
-seek_timestamp 1 
-muxdelay 0


ffmpeg -i %input%    -c:v libvpx-vp9 -crf 25 -b:v 0  -y  "無損.webm"


ffmpeg -y  -an -i %input%    -c:v libvpx-vp9 -crf 10 -b:v 0  "vp9_crf10.webm"
ffmpeg -y  -i %input%   -c:v libvpx-vp9  -lossless 1  "vp9_lossless.webm"

ffmpeg  -i %input% -c:v ffv1  -y "ffv1_lossless.mkv"  

ffmpeg  -i %input%  -ss 0:0:25.0 -to 0:0:34.0   -c:v copy -an -sn -y "lossless.webm"  
ffmpeg -i %input% -ss 0:1:54.0 -to 0:2:5.0 -c:v copy  -c:a aac  -y  "lossless.mkv"
ffmpeg  -i %input% -c:v ffv1  -y "ffv1_lossless.mkv"  


ffmpeg  -i %input%  -ss 0:0:53.0 -to 0:1:27.0  -c:v copy -c:a copy -sn -y "lossless.webm"  


-avoid_negative_ts make_zero



ffmpeg  -i %input% -c:v ffv1 -sn -an -y "ffv1_lossless.mkv"  


set tt=-ss 0:1:26.0 -to 0:1:57.0
%tt%
-s 1280x720


-ss 0:1:18.0 -to 0:4:0.0 


ffmpeg -y -i %input% -c:v libvpx-vp9  -crf 0 -b:v 0  "vp9_lossless.webm"


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

