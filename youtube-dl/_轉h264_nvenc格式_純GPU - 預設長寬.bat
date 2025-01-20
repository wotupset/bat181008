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



set output=_h264_nvenc純GPU_預設長寬%nnn%.mp4


set /p input=檔案:
echo %input%


set vf=-vf "scale_cuda=-1:-1,setsar=1:1,hwdownload,format=nv12" 
set vf=-vf "hwdownload,format=nv12"
set vf=
echo %vf%


set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn
set qqq01=

set tt=-ss 0:7:6.0 -to 0:7:41.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:10:0.0 -to 0:11:0.0
set tt0=
echo %tt%


set time0=%date%_%time%

ffmpeg -hwaccel cuda -hwaccel_output_format cuda  %tt% -i %input% ^
%vf% %qqq01% ^
-c:v h264_nvenc  -qp 25 ^
-y %output%

set time1=%date%_%time%

echo %time0%
echo %time1%
echo %output%


pause
exit



-crf 20 -maxrate 3M -bufsize 6M
-b:v 2M
-rc:v vbr -cq:v 30 
-cq 20 -pix_fmt yuv420p -map 0:a -map 0:v

-threads 1 

ffmpeg -hwaccel cuda -hwaccel_output_format cuda %tt% -i %input% ^
-vf "scale_cuda=1280:720:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload,format=nv12" ^
-c:v h264_nvenc -pix_fmt yuv420p -map 0:a -map 0:v ^
-y _TEST.mp4



指定cuda 資料會放在硬體(較快)
-hwaccel_output_format cuda 
-hwaccel cuda  -hwaccel_output_format cuda
沒指定的話 需要在vf前面加上hwupload_cuda (較慢)
YUV420P 的片源通常硬體加速解碼會輸出 NV12 格式
cuda不支援4:4:4


ffmpeg -hwaccel cuda  %tt% -i %input% ^
-vf "hwupload_cuda,scale_cuda=1280:1280:force_original_aspect_ratio=decrease,hwdownload,format=nv12" ^
-c:v h264_nvenc  -pix_fmt yuv420p -y _TEST.mp4
