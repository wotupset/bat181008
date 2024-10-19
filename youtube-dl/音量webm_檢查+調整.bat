echo off
chcp 65001

set /p input=檔案:

echo %date%_%time%

ffmpeg -i %input% -af "volumedetect" -f null -y NUL


set af=-af "loudnorm,volumedetect"
ffmpeg -i %input% -c:v copy  %af% -y _調整音量loudnorm預設.mkv

set af=-af "dynaudnorm,volumedetect"

ffmpeg -i %input% -c:v copy  %af% -y _調整音量dynaudnorm預設.mkv

set af=-af "acompressor,volumedetect"
ffmpeg -i %input% -c:v copy  %af% -y _調整音量acompressor預設.mkv



pause
exit

set af=-af "volume=+10dB"
ffmpeg -i %input% -c:v copy  %af% -y _調整音量loudnorm2.mkv



set af=-af "loudnorm=I=-20:TP=-2:LRA=7,volumedetect"
set af=-af "loudnorm=I=-20.0:print_format=json,volumedetect"
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5:print_format=summary,volumedetect"



-51
-28
-20
-31
-51

-25 原始
-26 _調整音量loudnorm.mkv
-18 _調整音量loudnorm2.mkv
-15 _調整音量dynaudnorm.mkv
-25 _調整音量acompressor.mkv


set af=-af "acompressor,volumedetect"
ffmpeg -i %input% -af "volumedetect" -vn -sn -dn  -f null -y NUL


set af=-af "volume=+10dB"

set af=-af "loudnorm,volumedetect"
set af=-af "loudnorm=I=-20:TP=-2:LRA=7,volumedetect"
set af=-af "loudnorm=I=-20.0:print_format=json,volumedetect"
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5:print_format=summary,volumedetect"

ffmpeg -i %input% -c:v copy  %af% -y 調整音量n.mkv

set af=-af "dynaudnorm,volumedetect"
ffmpeg -i %input% -c:v copy  %af% -y 調整音量d.mkv





pause
exit

set /p input2=輸入:
set af=-af "volume=%input2%dB,volumedetect"

set af=-af "loudnorm=print_format=json,volumedetect"

ffmpeg -i %input% -c:v copy  %af% -y FFF.webm


..\ffmpeg -i %input% -af "volumedetect" -f null -y NUL
,,\ffmpeg -i %input% -af "ebur128" -f null -y NUL


pause
/dev/null

 -b:v 5M -maxrate 2M -bufsize 2M 


-f rawvideo -pix_fmt yuv420p -s:v 1920x1080 


  -c:v libx264  -crf 15 -b:v 0k -preset fast  "%output%"



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

