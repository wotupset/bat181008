echo off
chcp 65001

echo %date%_%time% 

set /p input=檔案:


set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%





set wh=512
set wh=400
set wh=480
set wh=640
set wh0=800
set wh0=960
set wh0=1280

set crf=-crf 35
set crf=-crf 30
set crf=-crf 60
set crf=-crf 40
set crf0=

set crf2=-b:v 300K  -minrate 300k -maxrate 300k
set crf2=-b:v 250K  -minrate 250k -maxrate 250k
set crf2=-b:v 200K -minrate 10k -maxrate 200k -static-thresh 4441000 -tune-content screen -drop-threshold 100
set crf20=-b:v 150K -minrate 10k -maxrate 150k -static-thresh 4441000 -tune-content screen -drop-threshold 100
set crf20=


set qqq03=-map_chapters -1 -map_metadata -1 -ac 2 -sn -dn -pix_fmt yuv420p 
set qqq04=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1" 

set qqq05=-tune ssim
set qqq06=-rc_lookahead 1 -lag-in-frames 1 -drop-threshold 30
set qqq07=-static-thresh 1231000 -tune-content screen

set cpu01=-row-mt 1 -tile-columns 0 -tile-rows 0 -frame-parallel 1 -threads 1
set cpu02=-aq-mode 1 -rc_lookahead 1 -enable-tpl 1 -lag-in-frames 1 
set cpu03=-corpus-complexity 1

set ppp01=%crf% %crf2% %qqq03% %qqq04% %qqq05% %qqq06% %qqq07% %qqq08% %cpu01% %cpu02% %cpu03%
set ppp01=%crf% %crf2% %qqq03% %qqq04% %qqq05% %cpu01%
echo %ppp01%

set tt=-ss 0:0:11.5 -t 0:0:19.5
set tt=-ss 0:20:15.5 -to 0:22:0.0
set tt0=
echo %tt%


set output=_output_vp9_oped%RANDOM%.webm

set time0=%date%_%time%
ffmpeg  %tt% -i %input% -c:v libvpx-vp9 -c:a libopus %ppp01% -y %output%
set time1=%date%_%time%



echo %time0%
echo %time1%





pause
exit 
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