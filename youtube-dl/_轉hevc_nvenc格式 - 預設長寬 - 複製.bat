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

set output=_hevc_nvenc預設長寬%nnn%.mp4

set /p input=檔案:
echo %input%

set vf=-filter_complex "[0:v]setsar=1/1[v1];" -map [v1] -map 0:a
set vf=-map 0:v:0 -map 0:a:0
set vf=
echo %vf%

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 
set ppp01=%vf% %qqq01%
echo %ppp01%

set tt=-ss 0:1:17.0 -to 0:3:7.5
set tt=-ss 0:3:10.5 -to 0:3:11.5
set tt=-ss 0:0:0.0 -to 0:1:0.0
set tt=-ss 0:17:56.5 -to 0:21:26.5
set tt0=
echo %tt%



ffmpeg %tt% -i %input% -c:v hevc_nvenc   %ppp01%  -y  %output%


pause
exit
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