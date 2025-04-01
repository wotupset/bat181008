echo off
chcp 65001
title 無損

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set /p input=檔案:

set tt=-ss 0:0:0.0 -t 0:0:10.0
set tt=-ss 0:0:42.5 -to 0:0:57.5
set tt=-ss 0:0:0.0 -to 0:5:0.0
set tt=-ss 0:0:8.0 -to 0:0:22.0
set tt0=
echo %tt%


ffmpeg %tt% -i %input% -c:v ffv1   -y "_lossless%nnn%.mkv"  


pause
exit

ffv1 307mb
ffvhuff 826mb
huffyuv 1.06gb

ffmpeg %tt% -i %input% -c:v ffvhuff   -y "ffv1_lossless.mkv"  



-vf "scale=1920:1080,setsar=1/1"


ffmpeg  -i %input% -c:v ffv1  -map_chapters -1 -map_metadata -1  -y "ffv1_lossless.mkv"  

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

