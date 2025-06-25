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

set output=_libx264_%nnn%.mp4

set /p input=檔案:
echo %input%

set vf=-vf "scale=1280:720,setsar=1/1" 
set vf0=-vf "scale=720:1280,setsar=1/1" 
set vf=
echo %vf%

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 


set tt=-ss 0:5:37.5 -to 0:6:7.5
set tt=-ss 0:23:0.0 -to 0:23:50.0
set tt=-ss 0:13:39.5 -to 0:14:35.0
set tt=-ss 0:0:0.0 -to 0:0:10.0
set tt=
echo %tt%



ffmpeg %tt% -i %input% -c:v libx264  %vf% %qqq01%        -y  %output%


pause
exit
-c:v h264_nvenc
-c:v libx264

 -map 0:a:1 -map 0:v:0 
-crf 20 
-map 0:v:0 -map 0:a:1
-map 0:v:0 -map 0:a:1

-maxrate 1000k -bufsize 1000k 
 -pix_fmt yuv420p 
 -crf 30
-map 0:a:0 -map 0:v:0 -sn -dn 
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