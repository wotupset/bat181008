@echo off

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%



set /p input=ÀÉ®×:
set output=_output_a_%nnn%_.mp4

ffmpeg -y -i %input%  -map_chapters -1 -map_metadata -1 -crf 20   -preset veryfast   "%output%"


start "" "%output%" 

pause
exit
pause
-map_chapters -1 -map_metadata -1


-ss 00:12:0.0 -to 00:12:10.0


-preset veryfast  

 -preset fast -crf 0 -b:v 0 

-preset ultrafast

-crf 0 -preset veryfast 
-preset ultrafast -crf 0 -b:v 0 
-tune fastdecode
-tune animation


-vf "scale=640:-2:force_original_aspect_ratio=decrease:flags=lanczos" 

-ss 00:02:17.8 -to 00:04:14.8

-vf "scale=-2:360:force_original_aspect_ratio=decrease:flags=lanczos"
-vf "scale=640:640:force_original_aspect_ratio=decrease"

set qqq01=01.mp4


-t 00:0:21.0

-ss 00:00:00.0 -to 00:00:41.6

-preset veryfast -tune fastdecode

set ppp02= -ss 00:00:05.5 -t 00:00:8.5
set ppp03= -map 0:0 -map 0:2

