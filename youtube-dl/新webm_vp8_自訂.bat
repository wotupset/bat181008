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
set output=_vp8_測試_%nnn%.webm

set /p input=檔案:


set wh=400
set wh=480
set wh0=512
set wh=640
set wh0=720
set wh=800
set wh0=960
set wh0=1024
set wh0=1280
set wh0=1600

set vf=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=1120:630,setsar=1:1"
set vf0=-vf "crop=800:450:670:210" 
set vf0=-vf "scale=iw/2:ih/2,setsar=1:1"
set vf0=-vf "scale=iw*2:ih*2,setsar=1:1"
set vf0=
echo %vf%

set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5,volumedetect"
set af=
echo %af%

set crf0=-crf 30
set crf0=-crf 20 -b:v 0 -r 30 
set crf=-crf 35 -b:v 3000K
set crf=-b:v 1500K
set crf=-b:v 1000K
set crf0=-b:v 500K
set crf=-crf 50 -r 25
set crf0= 
echo %crf%

set qqq01=-map_metadata -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 
echo %qqq01%

set tt=-ss 0:0:30.0 -to 0:0:50.0
set tt=-ss 0:4:0.0 -to 0:6:0.0
set tt=
echo %tt%


ffmpeg  %tt%  -i %input% -c:v libvpx -c:a libopus  %crf% %vf% %af% %qqq01% -y  %output%


pause
exit
-s 270x480
 -crf 10
 
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