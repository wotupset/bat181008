echo off
chcp 65001

echo %date%_%time%

set /p input=檔案:
echo %input%

set vf=-vf "scale=1280:720,setsar=1/1" 
set vf=
echo %vf%

set tt=-ss 0:0:11.5 -t 0:0:19.5
set tt=-ss 0:9:2.0 -to 0:9:52.0
set tt=-ss 0:20:5.0 -to 0:20:18.0
set tt0=
echo %tt%

set output=_libx264.mp4

ffmpeg %tt% -i %input%   %vf%   -c:v libx264   -map 0:a:0 -map 0:v:0 -sn -dn  -crf 10  -pix_fmt yuv420p  -y  %output%


pause
exit
-vf "scale=in_range=full:out_range=tv:flags=full_chroma_inp+full_chroma_int"
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