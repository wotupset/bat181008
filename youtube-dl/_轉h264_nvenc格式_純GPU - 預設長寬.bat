echo off
chcp 65001

echo %date%_%time%

set /p input=檔案:
echo %input%


set vf=-vf "hwdownload,format=nv12"
echo %vf%

set af=-af "volume=-10dB" 
set af=
echo %af%

set ppp01=%vf% %af% 
echo %ppp01%

set tt=-ss 0:7:6.0 -to 0:7:41.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt0=
echo %tt%

set output=_h264_nvenc純GPU_預設長寬.mp4

ffmpeg -hwaccel cuda -hwaccel_output_format cuda  %tt% -i %input% ^
%ppp01% ^
-c:v h264_nvenc -map_metadata:g -1 ^
-y %output%



pause
exit
-cq 20 -pix_fmt yuv420p -map 0:a -map 0:v

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
