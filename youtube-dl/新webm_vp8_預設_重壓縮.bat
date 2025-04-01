echo off
chcp 65001
title vp8

echo %date%
echo %time%
set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%
set output=_vp8_預設_%nnn%.webm


set /p input=檔案:





set output=_vp8_預設%RANDOM%.webm

set time0=%date%_%time%

ffmpeg -hwaccel cuda -threads 1 -i %input% -c:v libvpx -c:a libopus  -y %output%

set time1=%date%_%time%


echo %time0%
echo %time1%





pause
exit
-vf "scale=%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1" 
-s 360x360
set oo4=-pix_fmt yuv420p -ac 2 
echo %oo4%

echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt
echo %date%_%time% >> 時間差.txt


-cpu-used 4
 -b:v 300K  -minrate 300k -maxrate 300k
 -deadline good -speed 4
-b:v 300K  -minrate 300k -maxrate 300k
 -cpu-used 4
 -deadline good -speed 4 

 -cpu-used 4 -static-thresh 200 
-af "volumedetect"

for %%F in ( %output% ) do echo %%~zF %%F

-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect"
-s 480x270
-c:v libvpx


-static-thresh 10
-rc_lookahead 10
-lag-in-frames 10 


-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease" 

-c:a libopus 
-c:a libvorbis 舊版音訊格式 檔案較大
 -threads 8
 -cpu-used 4

-vf "scale=360:360,setdar=16/9"

-s 640x640
-crf 10
-quality best 
ffmpeg -y   -i %input%  -c:v libvpx -crf 5 -b:v 0K  "%output%" 
-crf 30  -cpu-used 4

  -deadline realtime


-b:v 0k