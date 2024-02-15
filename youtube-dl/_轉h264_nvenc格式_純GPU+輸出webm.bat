echo off
chcp 65001

echo %date%_%time%

set /p input=檔案:
echo %input%



set wh=640
set wh=800
set wh0=1280
set wh0=1920
set vf0=-vf "scale_cuda=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload,format=nv12"
set vf=-vf "scale_cuda=%wh%:%wh%:interp_algo=lanczos:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload,format=nv12"
set vf0=-vf "scale=450:800,setsar=1/1" 
set vf0=

set af=-af "volume=-10dB" 
set af=

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn

set ppp01=%vf% %af% %qqq01%
echo %ppp01%

set tt=-ss 0:7:6.0 -to 0:7:41.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:0:0.0 -to 0:0:10.0
set tt=
echo %tt%

set output=_h264_nvenc純GPU+2.webm



ffmpeg -hwaccel cuda -hwaccel_output_format cuda  %tt% -i %input% ^
%ppp01% ^
-c:v libvpx-vp9 -c:a libopus -crf 40 ^
-y %output%



pause
exit
 -pix_fmt yuv420p -map 0:a -map 0:v
-cq 20
-threads 1 

ffmpeg -hwaccel cuda -hwaccel_output_format cuda %tt% -i %input% ^
-vf "scale_cuda=1280:720:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload,format=nv12" ^
-c:v h264_nvenc -pix_fmt yuv420p -map 0:a -map 0:v ^
-y _TEST.mp4


指定cuda 資料會放在硬體(較快)
-hwaccel_output_format cuda 
沒指定的話 需要在vf前面加上hwupload_cuda (較慢)
YUV420P 的片源通常硬體加速解碼會輸出 NV12 格式


ffmpeg -hwaccel cuda  %tt% -i %input% ^
-vf "hwupload_cuda,scale_cuda=1280:1280:force_original_aspect_ratio=decrease,hwdownload,format=nv12" ^
-c:v h264_nvenc  -pix_fmt yuv420p -y _TEST.mp4
