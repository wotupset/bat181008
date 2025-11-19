echo off
chcp 65001
title h264_nvenc預設長寬

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set "rand=%RANDOM%"
set "rand=00000%RANDOM%"
set "rand=%rand:~-5%"

set nnn=%vardate%_%vartime%_%rand%
echo %nnn%



set output=_h264_nvenc預設長寬%nnn%.mp4

set /p input=檔案:
echo %input%

set af=-af "volume=+5dB" -b:a 90k 
set af=-b:a 85k -ac 2
set af=-af "loudnorm,volume=+10dB" -b:a 80k 
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5,volumedetect"
set af=-af "loudnorm"
set af=-af "volume=-10dB"
set af=


set qqq01=-map_metadata -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 


set tt=-ss 0:1:26.5 -to 0:1:48.0
set tt=-ss 0:0:19.5 -to 0:0:26.0
set tt=-ss 0:0:26.0 -to 0:2:1.0
set tt0=
echo %tt%



ffmpeg %tt% -i %input% -c:v h264_nvenc -qp 25 %qqq01% %af% -y  %output%


pause
exit
-qp 25 -rc constqp
-c:v h264_nvenc -preset p7 -tune hq -profile:v high -qp 25 -rc constqp


-qp 25 
-b:v 5000k
-af "volume=+3dB" 
-af "volume=+3dB" 
-b:v 1000k
-preset p7
-cq 30
-qp 30
 -cq 20 -preset p7   -profile:v high 
-hwaccel auto

-filter_complex "[0:v]concat=n=1:v=1[vv]" -map "[vv]"
-filter_complex "[0:v][0:a]concat=n=1:v=1:a=1 [vv] [aa]" -map "[vv]" -map "[aa]"

-qp 10
-cq 10 

 -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [vv] [aa]" -map "[vv]" -map "[aa]" 

-map 0:v:0 -map 0:a:0 

-cq 30 -c:a copy

set vf=-filter_complex "[0:v]setsar=1/1[v1];" -map [v1] -map 0:a
set vf=-vf "scale=640:480,setsar=1:1"
set vf=-map 0:v:0 -map 0:a:0
set vf=
echo %vf%


set crf250613b=500k
set crf250613=-b:v %crf250613b% -maxrate %crf250613b% -minrate %crf250613b% -bufsize 100k
set crf250613=-cq 20
set crf2506130=


-c:v copy -c:a copy
-cq 30


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