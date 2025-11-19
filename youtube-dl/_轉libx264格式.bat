echo off
chcp 65001

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

set output=_libx264_%nnn%.mp4

set /p input=檔案:
echo %input%

set vf0=-vf "scale=720:1280,setsar=1/1" 
set vf0=-c:a copy 
set vf=-vf "scale=1280:720,setsar=1/1" 
set vf=-vf "scale=1920:1080,setsar=1/1" 
set vf0=
echo %vf%

set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5,volumedetect"
set af=-af "loudnorm" 
set af=
echo %af%


set qqq01=-map_metadata -1 -map_chapters -1  -sn -dn 


set tt=-ss 0:5:37.5 -to 0:6:7.5
set tt=-ss 0:23:0.0 -to 0:23:50.0
set tt=-ss 0:0:47.5 -to 0:8:50.0
set tt0=
echo %tt%



ffmpeg %tt%   -i %input% -c:v libx264 -ac 2 -pix_fmt yuv420p  %vf% %af% %qqq01%        -y  %output%


pause
exit
-preset slow
-preset ultrafast
 -fflags +genpts 
 -fps_mode cfr -movflags +faststart	
 -c:a aac -preset fast -profile:v main
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