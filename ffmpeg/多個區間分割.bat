@echo off

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set /p input=ÀÉ®×:
set output=_cut_a_%nnn%_
set qqq03= -map_chapters -1 -map_metadata -1 -pix_fmt yuv420p -ac 2 

ffmpeg -y -ss 00:0:3.4 -to 00:0:12.4  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "%output%1.mp4"
ffmpeg -y -ss 00:0:25.0 -to 00:0:37.5  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "%output%2.mp4"
ffmpeg -y -ss 00:1:13.4 -to 00:1:30.7  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "%output%3.mp4"
ffmpeg -y -ss 00:4:9.5 -to 00:5:15.8  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "%output%4.mp4"

pause
exit