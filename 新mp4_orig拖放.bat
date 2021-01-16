@echo off

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%



set /p input=檔案:
set output=_output_a_%nnn%_.mp4
set qqq03= -map_chapters -1 -map_metadata -1 -pix_fmt yuv420p -ac 2 



ffmpeg -y  -i %input%     %qqq03%   -c:v h264_nvenc -cq 30  "%output%"







start "" "%output%" 

pause
exit
pause
-ss 00:10:0.0 -to 00:11:0.0
-hwaccel cuda -hwaccel_output_format cuda


ffmpeg -y -ss 00:0:21.725 -to 00:0:28.130 -i %input% %qqq03%   -c:v h264_nvenc  -qp 30  "2-%output%"
ffmpeg -y -ss 00:0:37.559 -to 00:0:41.131 -i %input% %qqq03%   -c:v h264_nvenc  -qp 30  "3-%output%"
ffmpeg -y -ss 00:0:43.858 -to 00:0:48.740 -i %input% %qqq03%   -c:v h264_nvenc  -qp 30  "4-%output%"



-map_chapters -1 -map_metadata -1

ffmpeg -y -ss 00:18:35.656 -to 00:18:41.943 -i %input% %qqq03%   -c:v h264_nvenc  -qp 25  "%output%"




-cq 30
-qp 30


-vf reverse 影片倒放

  -c:v libx264  -crf 15 -b:v 0k -preset fast  "%output%"

 -b:v 2M -maxrate 2M -minrate 2M -bufsize 1M

-pix_fmt rgb24
-pix_fmt yuv420p

-ss 00:17:47.2 -to 00:17:50.3
 -c:v h264_nvenc -profile:v main -qp 30 
 -c:v libx264 -crf 15 -b:v 0k -preset fast
-c:v h264_nvenc
-c:v libx264
-c:v libx264rgb 檔案變很大
-noaccurate_seek
-accurate_seek

-hwaccel dxva2
-hwaccel qsv -c:v h264_qsv


set /p input=檔案:
set output=_output_a_%nnn%_.mp4
set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p -ac 2 ^
-metadata title="標題" ^
-metadata ARTIST="ARTIST" ^
-metadata comment="comment" ^
-metadata description="description" ^
-metadata copyright="%nnn%" 




-movflags faststart
-movflags faststart 邊下載邊撥放
-qp 相當等於 -crf 但檔案很大
-cq 20 
-ac 2 雙聲道
-profile:v baseline 無交錯
-profile:v main

-c:v h264_nvenc -profile:v baseline -preset fast 
-crf 20 -b:v 0k -preset fast

-sn 關掉字幕
-r 24
-c:v libx265
-c:v h264_nvenc
-c:v h264_nvenc  -b:v 1000k
-c:v hevc_nvenc
-crf 20
-c:v libvpx-vp9
-map_chapters -1 -map_metadata -1


-ss 00:12:0.0 -to 00:12:10.0


-preset veryfast  

 -preset fast -crf 0 -b:v 0 

-preset ultrafast

-crf 0 -preset veryfast 
-preset ultrafast -crf 0 -b:v 0 
-tune fastdecode
-tune animation


-vf "scale=640:-2:force_original_aspect_ratio=decrease:flags=lanczos" 

-ss 00:02:17.8 -to 00:04:14.8

-vf "scale=-2:360:force_original_aspect_ratio=decrease:flags=lanczos"
-vf "scale=640:640:force_original_aspect_ratio=decrease"

set qqq01=01.mp4


-t 00:0:21.0

-ss 00:00:00.0 -to 00:00:41.6

-preset veryfast -tune fastdecode

set ppp02= -ss 00:00:05.5 -t 00:00:8.5
set ppp03= -map 0:0 -map 0:2

