echo off
chcp 65001
title 重壓縮

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set /p input=檔案:


set crf=-crf 63
set crf=-crf 60
set crf=-crf 55
set crf=-crf 50 
set crf0=-crf 45
set crf0=-crf 40
set crf0=-crf 35
set crf0=

set crf2p=200k
set crf2p0=300k
set crf2p0=400k
set crf2p=1500k
set crf2=-b:v %crf2p% -minrate %crf2p% -maxrate %crf2p% 
set crf20=-b:v 500k -minrate 10k -maxrate 1500k
set crf20=-b:v 1000k
set crf2=-b:v 500k
set crf2=

set wh=400
set wh0=480
set wh0=640
set wh=800
set wh0=960
set wh0=1280

set vf=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1" 
set vf0=-vf "scale=640:480:force_original_aspect_ratio=decrease,setsar=1:1" 
set vf0=

set af=-af "volume=-10dB" 
set af=-af "volume=+5dB" 
set af=
echo %af%

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 

set cpu01=-row-mt 1 -cpu-used 4
set cpu01=-row-mt 1 
set cpu010=


set ppp01=%crf% %crf2% %vf% %af% %qqq01% %cpu01% 
echo %ppp01%




set tt=-ss 0:0:20.0 -to 0:1:50.0
set tt=-ss 0:1:58.0 -to 0:3:28.0
set tt0=
echo %tt%


set output=_output_vp9_oped%nnn%.webm

set time0=%date%_%time%
ffmpeg  %tt% -i %input% -c:v libvpx-vp9 -c:a libopus   %ppp01% -y %output%
set time1=%date%_%time%



echo %time0%
echo %time1%





pause
exit 
-threads 10
 -map 0:v:0 -map 0:a:1
 
-map_metadata:g -1
-map_chapters -1
-ac 2

 -an  -map 0:v:0 -map 0:a:0
set cpu01=-row-mt 1 -threads 8 -cpu-used 4 -tile-columns 0 -tile-rows 0 -frame-parallel 1

set qqq05x=-tune-content screen -static-thresh 214441000

-map_chapters -1 -map_metadata -1 
 -map 0:v -map 0:a
set cpu02=-rc_lookahead 1 -lag-in-frames 1
-cpu-used 4
 -static-thresh 214441000

set qqq060=-rc_lookahead 1 -lag-in-frames 1 -drop-threshold 30
set qqq070=-static-thresh 1231000 -tune-content screen

set cpu01=-row-mt 1 -tile-columns 0 -tile-rows 0 -frame-parallel 0 -threads 0
set cpu02=-aq-mode 1 -rc_lookahead 1 -enable-tpl 1 -lag-in-frames 1 
set cpu02=-rc_lookahead 1 -lag-in-frames 1
set cpu03=-corpus-complexity 1

沒效果?
-enable-tpl 0 -aq-mode 0 

很明顯的延遲
-drop-threshold 100

-tune ssim
-bufsize 200k
-hwaccel cuda -threads 1
-speed 2


pause
-noise-sensitivity 1 -drop-threshold 1
-map 0:v:0 -map 0:a:0 

for %%I in ( %output% ) do @echo %%~zF %%F


-tile-columns 1 -tile-rows 0 -frame-parallel 0 -lag-in-frames 20 -auto-alt-ref 1 



-cpu-used 4
-deadline good -speed 4


-quality等於-deadline??
-deadline realtime -speed 2
-deadline good -speed 1 

-deadline realtime -speed 5
-deadline good -speed 3

-deadline good
-static-thresh 1000
for %%F in ( %output% ) do @echo %%~zF %%F 檔案大小
 

-b:a 50K -b:v 500K
-deadline good -cpu-used 4
-deadline realtime  -cpu-used 5 

-b:a 96K

-c:a libopus
-c:a libvorbis

-b:v 500K -maxrate 500K -bufsize 100K 

ffmpeg -y -i %input% %qqq03% -c:v libvpx-vp9  -deadline realtime  -cpu-used 5  -crf 40  -vf "scale=400:400:force_original_aspect_ratio=decrease"  %output%




-b:a 96K