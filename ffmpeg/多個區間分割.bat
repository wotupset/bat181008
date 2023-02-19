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

ffmpeg -ss 0:0:0.0 -to 0:0:4.3  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30 -y "01.mp4"
ffmpeg -ss 0:0:52.0 -to 0:0:59.0  -i %input%   %qqq03%   -c:v h264_nvenc -cq 30 -y "02.mp4"



ffmpeg -i "01.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 01x.ts
ffmpeg -i "02.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 02x.ts
ffmpeg -i "concat:01x.ts|02x.ts" -c copy -bsf:v h264_mp4toannexb  -y 合併.mp4


del 01.mp4
del 02.mp4

del 01x.ts
del 02x.ts



pause
exit