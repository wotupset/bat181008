echo off
chcp 65001
title 2pass

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

set /p input=檔案:
echo %input%

set tt=-ss 0:1:35.5 -to 0:1:10.0
set tt=-ss 0:2:40.0 -to 0:3:20.0
set tt=-ss 0:16:12.2 -to 0:16:42.2
set tt0=

set qqq01a=-row-mt 1 -cpu-used 2 -map_metadata -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 


set wh=640
set wh=800
set wh0=960
set wh0=1024
set wh0=1280

set size01=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
set size010=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set size010=-s 960x540 
set size010=-s 800x450 
set size010=




set af=-af "volume=-5dB" -b:a 80k
set af=-af "dynaudnorm=p=0.5,volumedetect"
set af=-af "volume=+1dB" -b:a 80k
set af=-an
set af=-af "loudnorm"
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5,volumedetect"
set af=

set p_all=%qqq01a% %size01% %af% -static-thresh 2144421000 -tune-content screen -hide_banner 
echo %p_all%

echo goto top
title 1pass


set ppp01a=-crf 50
ffmpeg %tt% -i %input% -c:v libvpx-vp9 -c:a libopus %ppp01a% %p_all% -y output1crf50.webm
timeout /t 1



echo 繼續
pause
:top


set ppp01b=-b:v 5000k
set ppp01b0=-b:v 2500k
set ppp01b0=-b:v 2000k
set ppp01b0=-b:v 1500k
set ppp01b0=-b:v 1000k 
set ppp01b0=-b:v 300k -minrate 300k -maxrate 300k -bufsize 100k 
set ppp01b=-b:v 2500k -r 30
set ppp01b=-b:v 1500k 
set ppp01b0=
echo %ppp01b%

ffmpeg %tt% -i %input% -c:v libvpx-vp9 %ppp01b% %p_all% -pass 1 -f webm -y NUL && ^
ffmpeg %tt% -i %input% -c:v libvpx-vp9 %ppp01b% %p_all% -pass 2 -f webm -y output2pass.webm

title 2pass完成
echo 再次
pause
goto top

cmd
exit
pause

-map_metadata -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 
-metadata:s:v handler_name="handler_name"


-t 10 -fs 1M



set aa=echo string
call %aa%
pause



:top
goto top


-bufsize 100k
-row-mt 1 -cpu-used 4



-hide_banner
-loglevel info 
-loglevel warning



-r 30
-static-thresh 2144421000


-map 0:v:0 -map 0:a:1 
-b:v 500k
 -af "loudnorm" 

-s 800x450
-s 960x540
-af "volume=-7dB" 


-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1" 
-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1" 


-static-thresh 2144421000
-b:v 1200k
-r 60

ffmpeg  -hwaccel cuda -hwaccel_output_format cuda -i %input% ^
-vf "hwupload,scale_cuda=1280:720,hwdownload,format=nv12" ^
-c:v h264_nvenc  ^
-y test.mp4



echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%
set output=測試%nnn%.mp4




set /p input=檔案:

set vf=-vf "scale=1280:-2:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
echo %vf%
set tt=-ss 1:6:10.0 -to 1:7:25.0
set tt=-ss 0:0:0.0 -to 0:0:25.0
echo %tt%

-preset p5 -rc:v vbr -cq:v 20 -b:v 0k output_8bit.mp4
-map 0:v:0 -map 0:a:0


set vf=-vf "scale=800:800:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1,atadenoise "
set vf=-vf "scale=800:800:force_original_aspect_ratio=decrease,setsar=1:1"

set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 
set tt=-ss 0:0:0.0 -to 0:0:15.0
set tt=-ss 0:14:0.0 -to 0:14:15.0
set tt0=

ffmpeg %tt%  -i %input% -c:v h264_nvenc %vf% %qqq01% -y %output%




set qqq01=-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn 

-vf "scale=800:800:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1,chromanr=thres=30"


-r 25 -t 10  -cq 30 
-c:v h264_nvenc -cq 30


ffmpeg -i %input% -c:v h264_nvenc -vf "gblur" -y gblur.mp4
ffmpeg -i %input% -c:v h264_nvenc -vf "gblur=sigma=5" -y gblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "boxblur"  -y boxblur.mp4
ffmpeg -i %input% -c:v h264_nvenc -vf "boxblur=5"  -y boxblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "avgblur"  -y avgblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "minterpolate=fps=60" output.60fps.mp4


ffmpeg.exe -ss 0:0:0.0 -to 0:0:5.0 -i 01.mp4 -c:v h264_nvenc -y video.01.mp4
ffmpeg.exe -ss 0:0:0.0 -to 0:0:5.0 -i 01.mp4 -c:v h264_nvenc -y video.02.mp4




