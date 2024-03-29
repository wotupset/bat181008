echo off
chcp 65001

set /p input=檔案:

set tt=-ss 0:1:30.0  -to 0:1:37.46
set tt0=
echo %tt%


ffmpeg %tt% -i %input% -c:v ffv1  -y "ffv1_lossless.mkv"  



pause
exit
ffmpeg %tt%  -i %input% -c:v libx264  -crf 5 -b:v 0 -pix_fmt yuv420p  -y "h264_lossless.mp4"



-vf "eq=contrast=1.1:brightness=0.0:saturation=1.2"

ffmpeg %tt% -i %input% -c:v ffv1  -y "ffv1_lossless.mkv"  

ffmpeg %tt%  -i %input% -c:v libx264  -crf 0 -b:v 0 -y "h264_lossless.mp4"

ffmpeg %tt%  -i %input%   -c:v libvpx-vp9  -lossless 1  -y "vp9_lossless.webm"


ffmpeg -i %input% -c:v libvpx-vp9 -crf 10 -b:v 0  -y  "無損webm.webm"
ffmpeg -i %input% -c:v libvpx-vp9 -crf 10 -b:v 0  -y  "無損webm.webm"


ffmpeg -i %input% -f lavfi -i anullsrc -shortest -c:v h264_nvenc -qp 1 -y  "無損_h264_nvenc.mp4"
ffmpeg -i %input%  -f lavfi -i anullsrc -shortest  -c:v libvpx-vp9 -crf 10 -b:v 0  -y  "無損webm.webm"

ffmpeg   -i %input%   -c:v libvpx-vp9  -lossless 1  -y "vp9_lossless.webm"


ffmpeg %tt% -i %input% -c:v ffv1  -y "ffv1_lossless.mkv"  


set output=_lossless%RANDOM%.webm
ffmpeg %tt% -i %input% -c:v copy -c:a copy  -shortest -fflags +shortest -max_interleave_delta 100M -y %output%


ffmpeg %tt% -i %input% -c:v libx264 -crf 10 -b:v 0 -y %output%
ffmpeg %tt%   -i %input% -c:v libx264  -crf 5 -b:v 0 -y %output%
ffmpeg %tt%  -seek_timestamp 1  -i %input% -c:v copy -c:a copy -sn -dn -y "_lossless.mkv" 

-seek_timestamp 1 

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

