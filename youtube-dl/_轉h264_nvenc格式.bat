echo off
chcp 65001

echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%
set output=_h264_nvenc%nnn%.mp4

set /p input=檔案:
echo %input%



set wh=640
set wh0=800
set wh0=1024
set wh=960
set wh=1280
set wh0=1920
set vf=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1" -map 0:v:0 -map 0:a:0
set vf0=-vf "scale=800:600,setsar=1/1"
set vf0=-filter_complex "[0:v]scale=1280:720,setsar=1/1[v1];" -map [v1] -map 0:a
set vf0=
echo %vf%


set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 


set tt=-ss 0:22:45.65 -to 0:25:5.55
set tt=-ss 0:0:1.5 -to 0:1:45.0
set tt=-ss 0:20:34.0 -to 0:21:57.0
set tt0=
echo %tt%


set time0=%date%_%time%
ffmpeg %tt% -i %input% -c:v h264_nvenc  -qp 25  %vf%  %qqq01%  -y  %output%
set time1=%date%_%time%

echo %time0%
echo %time1%
echo %output%


pause
exit

-b:v 1000K -maxrate 1000k -bufsize 1000k 

原始 61.3MB
-qp 25 30.7MB
-cq 25 55.8MB



-qp 30 
-cq 30 

-qp 20
-cq 20  
set vf=-vf "hwupload_cuda,scale_cuda=%wh%:%wh%:interp_algo=lanczos:force_original_aspect_ratio=decrease,setsar=1:1,hwdownload"
-rc:v vbr -cq:v 30 

-map_metadata:g -1 -pix_fmt yuv420p 
-map 0:a -map 0:v

-cq 20
-cq 30
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