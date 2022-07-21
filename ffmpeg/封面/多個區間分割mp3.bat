echo off
chcp 65001

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set /p input=檔案:
set output=_cut_a_%nnn%_
set qqq03= -map_chapters -1 -map_metadata -1 -pix_fmt yuv420p -ac 2 

ffmpeg -y -ss 00:0:0.0 -to 00:0:8.6  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "01.mp4"
ffmpeg -y -ss 00:0:38.7 -to 00:0:42.1  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30  "02.mp4"


pause
exit