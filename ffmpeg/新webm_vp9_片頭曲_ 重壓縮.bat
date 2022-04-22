set /p input=檔案:

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set output=_output_vp9_oped.webm





set wh=800
set wh=512

set wh=400
set wh=640
set wh=480


set crf=-b:v 300K  -minrate 300k -maxrate 300k
set crf0=-b:v 250K  -minrate 250k -maxrate 250k
set crf0=-b:v 200K  -minrate 200k -maxrate 200k
set crf0=-crf 35
set crf0=


set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 2    -sn -dn -tune-content screen -cpu-used 4
set qqq04=%crf%
set qqq05z= -row-mt 1 -aq-mode 0 -tile-columns 1 -tile-rows 0 -frame-parallel 0 -lag-in-frames 20 -auto-alt-ref 1 
set qqq99z=



echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt

ffmpeg -i %input% %qqq03% %qqq04% -map 0:v:0 -map 0:a:0  -c:v libvpx-vp9 -c:a libopus    -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease"  -y %output%

echo %date%_%time% >> 時間差.txt


for %%I in ( %output% ) do @echo %%~zF %%F


start ""  %output%





pause



exit 
pause
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