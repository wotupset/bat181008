@echo off

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%
echo %nnn%




set /a cc=0

for %%a in (*.mp4) do (

set /a cc=cc+1
echo %%a
ffmpeg -y -i "%%a" -c:v libvpx-vp9  -deadline realtime -cpu-used 5   -crf 30  -vf "scale=800:800:force_original_aspect_ratio=decrease"   "_%nnn%_%RANDOM%_%%a.webm"

)

echo %cc%

CMD

exit


-deadline realtime  -cpu-used 4 -vf "scale=800:800:force_original_aspect_ratio=decrease"

-cpu-used 4
-cpu-used 8
-deadline realtime  -cpu-used 8
-vf "scale=800:800:force_original_aspect_ratio=decrease"

 -deadline realtime


-c:v libvpx
 -c:v libvpx-vp9  -vf "scale=640:640:force_original_aspect_ratio=decrease"


:flags=lanczos

-b:v 1000k -minrate 1000k -maxrate 1000k 
-ss 00:00:00.0 -t 00:00:30.0

-vf "scale=640:-2:force_original_aspect_ratio=decrease:flags=lanczos" 


-b:v 1000k -minrate 1000k -maxrate 1000k 

 -crf 30 -b:v 0


-crf 25 -b:v 0
-crf 30 -b:v 0
ffmpeg %parameter01% -i "%%a" %parameter02% "%vcoodate%_%vcootime%_%%a.webm"
