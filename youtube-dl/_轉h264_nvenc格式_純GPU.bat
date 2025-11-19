echo off
chcp 65001

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set output=_h264_nvenc純GPU%nnn%.mp4

set /p input=檔案:
echo %input%



set wh=640
set wh=800
set wh=1280
set wh0=1920
set vf=-vf "scale_cuda=%wh%:%wh%:force_original_aspect_ratio=decrease,hwdownload,format=nv12"
set vf0=-vf "scale_cuda=1280:720,hwdownload,format=nv12"
set vf0=-vf "scale_cuda=1280:720"
set vf0=
echo %vf%

set af=-af "volume=-10dB" 
set af=
echo %af%

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2  -sn -dn 
set qqq010=


set tt=-ss 0:7:6.0 -to 0:7:41.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:1:0.0 -to 0:1:20.0
set tt=
echo %tt%


set time0=%date%_%time%

ffmpeg -hwaccel cuda -hwaccel_output_format cuda  %tt% -i %input% ^
%vf% %qqq01% ^
-c:v h264_nvenc -qp 20  ^
-y %output%

set time1=%date%_%time%

echo %time0%
echo %time1%
echo %output%




pause
exit
GPU不支援 -pix_fmt yuv420p
GPU不支援444 
GPU不支援10bit

set vf0=-vf "scale=450:800,setsar=1/1" 
scale_cuda 不支援 setsar=1/1

set vf=-vf "scale_cuda=%wh%:%wh%:interp_algo=lanczos:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload,format=nv12"

-rc:v vbr -cq:v 30

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
