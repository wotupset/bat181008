echo off
chcp 65001
title h264_nvenc預設長寬

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set output=_h264_nvenc預設長寬%nnn%.mp4

set /p input=檔案:
echo %input%

set vf=-filter_complex "[0:v]setsar=1/1[v1];" -map [v1] -map 0:a
set vf=-vf "scale=640:480,setsar=1:1"
set vf=-map 0:v:0 -map 0:a:0
set vf=
echo %vf%

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 
set qqq01= 

set tt=-ss 0:20:50.0 -to 0:21:0.0
set tt=-ss 0:1:26.5 -to 0:1:48.0
set tt=-ss 0:0:0.0 -to 0:10:0.0
set tt0=
echo %tt%

set crf250613b=500k
set crf250613=-b:v %crf250613b% -maxrate %crf250613b% -minrate %crf250613b% -bufsize 100k
set crf250613=-cq 30


ffmpeg %tt% -hwaccel auto -i %input% -c:v h264_nvenc %crf250613% -pix_fmt yuv420p  -y  %output%


pause
exit
 -qp 10

-qp 10
-af "volume=+5dB"
 -qp 20
-preset fast

-qp 20 

-map 0:v:0 -map 0:a:0
-an

-map 0:v:0 -map 0:a:0
-qp 20 
ffmpeg -i 01x.mp4 -i 02x.mp4  -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]"  -y 合併.mp4



-qp 25
-qp 20 
 -map 0:v:0 -map 0:a:1
 
 
-qp 25
-cq 25 




-cq 20 

-r 25
-rc:v vbr -cq:v 30 

-map 0:a -map 0:v
:flags=bilinear


-cq 30
-qp 20

-bsf:v h264_mp4toannexb
-err_detect crccheck


-c:v ffv1
-c:v h264_nvenc
-bsf:v h264_mp4toannexb -f mpegts

pause
:top
goto top









set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%





--hls-use-mpegts
start "" yt-dlp  --hls-use-mpegts  %poi%
start "" youtube-dl  --hls-use-mpegts --no-part  %poi%


--hls-use-mpegts saved file is usually corrutped without it. yt-dlp has this on by default now.



--hls-use-mpegts --no-part
--hls-prefer-native --hls-use-mpegts --fixup warn

???
youtube-dl -o filename.ts URL




start "" yt-dlp -f best -o yt-live-%%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%



youtube-dl -f best -o %%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%

-f 301

set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%

youtube-dl -f 301 -o %%(title)s-%%(id)s_%vdate%_%vtime%.%%(ext)s  %poi%

youtube-dl -f 301 %poi%


pause
exit