echo off
chcp 65001

echo %date%_%time%

set /p input=檔案:
echo %input%



set wh=640
set wh=800
set wh=1280
set wh=1920
set vf=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set vf=-vf "scale=450:800,setsar=1/1" 
set vf=
echo %vf%

set af=-af "volume=-5dB" 
set af=
echo %af%

set ppp01=%vf% %af% 
echo %ppp01%

set tt=-ss 0:7:6.0 -to 0:7:41.0
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:0:34.5 -to 0:4:6.5
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt0=
echo %tt%

set output=_h264_nvenc預設.mp4

ffmpeg %tt% -i %input%  %ppp01% -c:v h264_nvenc -pix_fmt yuv420p   -y  %output%


pause
exit
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