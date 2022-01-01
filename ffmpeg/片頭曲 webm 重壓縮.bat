set /p input=ÀÉ®×:

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set output=_output_vp9_oped.webm
set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 2   -row-mt 1  -sn -tune-content screen

set wh=800
set wh=640
set wh=400
set wh=480

set crf=-crf 40
set crf=-crf 55
set crf=-crf 45
set crf=-crf 40
set crf=


ffmpeg -y -i %input% %qqq03%    -c:v libvpx-vp9 -c:a libopus  %crf%   -b:v 200K  -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease"  %output%


for %%F in ( %output% ) do @echo %%~zF %%F


start ""  %output%





pause



exit 
pause
-b:a 50K -b:v 500K
 -deadline realtime  -cpu-used 5 

-b:a 96K

-c:a libopus
-c:a libvorbis

-b:v 500K -maxrate 500K -bufsize 100K 

ffmpeg -y -i %input% %qqq03% -c:v libvpx-vp9  -deadline realtime  -cpu-used 5  -crf 40  -vf "scale=400:400:force_original_aspect_ratio=decrease"  %output%




-b:a 96K