echo off
chcp 65001


echo %date%
echo %time%





set /p input=檔案:


set wh=800
set vf0=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"

set wh0=960:720
set wh0=800:600
set wh0=640:480

set wh0=1920:1080
set wh0=1280:720
set wh0=800:450
set wh=640:360

set wh0=720:1280
set wh0=450:800

set vf=-vf "scale=%wh%:flags=bilinear,setsar=1/1" 
echo %vf%

set tt=-ss 0:0:52.0 -to 0:1:4.0
set tt0=
echo %tt%

set output=_output_a_%RANDOM%.mp4
title %output%

ffmpeg -hwaccel cuda -threads 1 %tt% -i %input% %vf% -c:v h264_nvenc -qp 10 -y %output%





pause
exit
-r 30
-pix_fmt yuv420p

set vf=-vf "scale_cuda=800:450:interp_algo=bilinear,setsar=1/1" 
nearest 鋸齒明顯 檔案大
bilinear 檔案小
bicubic
lanczos 中等
https://ffmpeg.org/ffmpeg-filters.html#scale_005fcuda


set vf=-vf "scale=800:450:flags=bilinear,setsar=1/1" 
neighbor 鋸齒明顯 檔案大
bilinear 檔案小
bicubic
lanczos 中等
https://ffmpeg.org/ffmpeg-scaler.html


Default value is 'bicubic'
set vf=-vf "scale=%wh%:flags=fast_bilinear,setsar=1/1" 
set vf=-vf "scale=%wh%:flags=bilinear,setsar=1/1" 
set vf=-vf "scale=%wh%:flags=neighbor,setsar=1/1" 

ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i %input% -vf "scale_cuda=1280:720,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test.mp4
ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i %input% -vf "scale_cuda=1280:720,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test.mp4


-vf "scale_cuda=800:450,setsar=1/1" 

-map 0:0 -map 0:1 -map -0:2
set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_640p
echo %nnn%


start "" "%output%" 


-qp 30

-c:v hevc_cuvid


UTF8的格式
set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
非UTF8的格式
set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

-qp 30
-map 0:v:0 -map 0:a:0
-cq 30
-qp 30

-c:v h264_nvenc -cq 30
-vf "scale=1280:720,setsar=1/1" 


-vf "setsar=1/1,setdar=16/9" 
-c:v h264_nvenc -rc vbr -cq 25   檔案較大 
-c:v h264_nvenc -rc constqp -qp 25  檔案較小 
-b:v 0K 



-map 0:v:0 -map 0:a:0

-vf "scale=1280:720,setsar=1/1"
-vf "scale=720:1280,setsar=1/1"

 -af "loudnorm=i=-30"
set wh=1280
set wh0=
-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1/1"


-qp 30 較小
-cq 30 較大

-map 0:v:0 -map 0:a:1 -sn

set output=_output_a_%nnn%_.mp4

-map 0:v:0 -map 0:a:1 -sn
-map 0:v:0 序列0(第一個輸入檔案) 輸入v=影像 index=0(第一軌)
-map 0:a:1 序列0(第一個輸入檔案) 輸入a=聲音 index=1(第二軌)
-map 0:s:1 序列0(第一個輸入檔案) 輸入s=字幕 index=1(第二軌)


ffmpeg -y  -i %input%  %qqq03% -vf "scale=480:360:force_original_aspect_ratio=decrease,setsar=1/1"  -c:v h264_nvenc -cq 30 "%output%"

-ss 00:00:00.0 -to 00:10:0.0 


-qp 30 固定品質
-cq 30 固定頻寬
^
-metadata title="標題" ^
-metadata ARTIST="ARTIST" ^
-metadata comment="comment" ^
-metadata description="description" ^
-metadata copyright="%nnn%" 

-vf "scale=1280:720"
-vf "scale=1280:720,setsar=1/1"
-vf "scale=1280:720:force_original_aspect_ratio=decrease"


-aspect 16:9 

-pix_fmt yuv420p 8位元
-pix_fmt yuv420p10le 10位元(x265) 
-pix_fmt yuv420p12le 12位元(x265) 

-qp 30
-cq 30

pause
-c:v libx264
-c:v h264_nvenc
-preset fast 
-preset veryfast 
-crf 20 -b:v 1000k
-ss 00:00:00.0 -to 00:10:0.0 

  -preset veryfast -tune fastdecode
 -preset veryfast -tune fastdecode

set ppp02= -ss 00:00:05.5 -t 00:00:8.5
set ppp03= -map 0:0 -map 0:2


 -vf "scale=640:640:force_original_aspect_ratio=decrease:flags=lanczos" 


%ppp02%

 -s 640x360 -ss 00:00:00.0 -to 00:00:35.0

-ss 00:00:00.0 -to 00:00:41.6

-preset veryfast -tune fastdecode


ffmpeg -y -i "%qqq01%" -s 640x360 -crf 25 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -ss 00:03:29.4 -to 00:03:32.9 -i "%qqq01%" -preset veryfast -tune fastdecode  -metadata title="不能只有我看到" "%qqq02%" 

ffmpeg -y -i "%qqq01%" -preset veryfast -tune fastdecode -metadata title="不能只有我看到" "%qqq02%" 

-ss 00:09:15.0 -to 00:10:10.0

ffmpeg -y  -i "%qqq01%" -s 400x300 -crf 45 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 

ffmpeg -y  -i "%qqq01%" -s 360x640 -crf 45 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -ss 00:00:00.0 -to 00:01:31.0 -i "%qqq01%" -preset veryfast -tune fastdecode -metadata title="不能只有我看到" "%qqq02%" 


-ss 00:00:00.0 -to 00:00:10.0
-s 640x360
-s 360x640

ffmpeg -y -ss 00:00:00.0 -to 00:00:08.0 -i "%qqq01%" -preset veryfast -tune fastdecode -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -i "%qqq01%" -s 640x360 -crf 30 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -i "%qqq01%" -preset veryfast -tune fastdecode -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -i "%qqq01%"  -metadata title="不能只有我看到" "%qqq02%" 


ffmpeg -y -ss 00:02:43.0 -to 00:03:06.0 -i "%qqq01%" -crf 20 -b:v 0   -metadata title="不能只有我看到" "%qqq02%" 

ffmpeg -y -ss 00:02:43.0 -to 00:03:06.0 -i "%qqq01%"  -preset veryfast -tune fastdecode     -metadata title="不能只有我看到" "%qqq02%" 


-preset veryfast -tune fastdecode 


 -s 640x360 -crf 30 -b:v 0 

  -deadline realtime -threads 2 -speed 4 
 -crf 20 -b:v 0
-lossless 1
-s 360x640
-s 640x360
pause

exit
pause

-ss 00:01:00.0 -to 00:02:00.0
ffmpeg -y -ss 00:00:00.0 -to 00:01:05.0  -i "%qqq01%" -preset veryfast -tune fastdecode  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -ss 00:18:25.0 -to 00:19:25.0 -i "%qqq01%" -preset veryfast -tune fastdecode  -metadata title="不能只有我看到" "%qqq02%" 

ffmpeg -y -ss 00:00:00.0 -to 00:02:00.0 -i "%qqq01%" -preset veryfast -tune fastdecode  -s 640x360 -crf 30 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -ss 00:00:08.8 -to 00:01:46.5  -i "%qqq01%" -preset veryfast -tune fastdecode -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y  -i "%qqq01%" -preset veryfast -tune fastdecode -b:v 500k  -crf 30 -b:v 0  -vf scale=640:640:force_original_aspect_ratio=decrease  -metadata title="不能只有我看到" "%qqq02%" 



ffmpeg -y -i "%qqq01%"  -s 640x360  -crf 30 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y  -i "%qqq01%"   -crf 30 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 

ffmpeg -y  -i "%qqq01%" -b:v 500k  -s 400x300 -crf 30 -b:v 0 -deadline realtime -threads 2 -speed 4 -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y -ss 00:15:50.0 -t 00:00:01.0  -i "%qqq01%" -b:v 500k  -crf 30 -b:v 0  -metadata title="不能只有我看到" "%qqq02%" 
ffmpeg -y  -i "%qqq01%"  -s 1280x720 -crf 30 -b:v 0 -deadline realtime -threads 2 -speed 4  -metadata title="不能只有我看到" "%qqq02%" 


-deadline realtime

-an // 沒有聲音
 -crf 40 -b:v 0 

 -b:v 500k 
-preset veryfast
-tune fastdecode

-vf scale=640:640:force_original_aspect_ratio=decrease

-ss 00:08:24.0 -t 00:00:10.0 
-vf fps=30

-c:v libvpx


-ss 00:00:00.0 -t 00:00:10.0

-c:v libvpx -b:v 1500k
-crf 30 -b:v 0

-b:v 2M 
 -ss 00:00:00.0 -t 00:00:26.0
 -crf 20 -b:v 0


-s 640x360
 -ss 00:00:00.0 -t 00:00:30.0
-vf scale=640:640:force_original_aspect_ratio=decrease

-crf 30 -b:v 0
-s 400x300
-s 640x360
-c:v libvpx
-vf fps=30
-vf scale=640:640:force_original_aspect_ratio=decrease
-ss 00:20:12.0 -t 00:00:30.0

force_original_aspect_ratio=decrease


ffmpeg -y  -loop 1 -i y10.jpg -i y10.mp3 -ss 00:00:00.0 -t 00:00:18.0  output.mp4



set qqq=E:\_BT\[Shark-Raws] Hugtto! Precure #04 (NBN 1280x720 x264 AAC).mp4
ffmpeg -y -ss 00:20:12.0 -t 00:00:30.0 -i "%qqq%" -s 640x360 -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm


ffmpeg -y -i "xNy3E2qL4gXJqNbq.mp4" -s 360x640  -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm
ffmpeg -y -ss 00:00:30.0 -t 00:00:30.0 -i "Q0HNrnXAbk3olZcx.mp4" -s 640x360  -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm


ffmpeg -y -i "DVmLj2BVQAAJa4U.mp4" -vf scale=-1:-1:flags=lanczos,palettegen palette.png
ffmpeg -y -i "DVmLj2BVQAAJa4U.mp4" -i palette.png -filter_complex "scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif



ffmpeg -y -i "xqyKmn57NuDuaEK8.mp4" -s 640x360 -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm
-minrate 1000K -b:v 1000K

ffmpeg -y -i "DVGg8-mVMAAiY1m.mp4" -vf scale=-1:-1:flags=lanczos,palettegen palette.png
ffmpeg -y -i "DVGg8-mVMAAiY1m.mp4" -i palette.png -filter_complex "scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif


ffmpeg -y -ss 00:00:00.55 -to 00:00:06.9 -i "01.webm"  -s 640x360 -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm
ffmpeg -y -i "I51k_oMxXN7gHBiH.mp4" -s 640x360 -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm

ffmpeg -y -i "DU2I7xBW4AEzrkK.mp4" -vf scale=-1:-1:flags=lanczos,palettegen palette.png
ffmpeg -y -i "DU2I7xBW4AEzrkK.mp4" -i palette.png -filter_complex "scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif

ffmpeg -y -i "CXT1aBiUMAAif2N.mp4" -i palette.png -filter_complex "fps=20,scale=800:480:flags=lanczos[x];[x][1:v]paletteuse" output.gif

ffmpeg -y -i "01.webm" -ss 00:00:20.0 -to 00:00:54.0 -s 640x360 -crf 30 -b:v 0 -vf fps=20  -metadata title="poiㄛ" output.webm

ffmpeg -y -i "1517573698652.gif" -metadata title="poiㄛ" output.mp4


ffmpeg -y -i "Xn7oClIc-aTuGzjV.mp4" -s 360x640 -crf 30 -b:v 0 -metadata title="poiㄛ" output.webm

ffmpeg -i 0test.mp4 -i logo.png -filter_complex "overlay=0:0" output.webm

ffmpeg -y -i "pw95K3mfASQuGNi8.mp4" -vf fps=30,scale=-2:400 output.webm

ffmpeg -y -i "m9_vp6zXysqEgjrh.mp4" output.gif


ffmpeg -y -i "m9_vp6zXysqEgjrh.mp4" -vf fps=30,scale=-1:320:flags=lanczos,palettegen palette.png
ffmpeg -y -i "m9_vp6zXysqEgjrh.mp4" -i palette.png -filter_complex "fps=30,scale=-1:320:flags=lanczos[x];[x][1:v]paletteuse" output.gif

ffmpeg -y -f gif  -i "3DT6K2z.gif"   output.mp4

ffmpeg -y  -loop 1 -i 05.jpg -i 18.mp3 -ss 00:00:00.5 -t 00:00:36.0  -s 640x360 output.mp4
ffmpeg -y  -loop 1 -i 04.jpg  -i 18.mp3 -ss 00:00:00.5 -t 00:00:36.0 -r 30  -s 640x360 output.mp4

ffmpeg -y -i "output.mp4" -s 480x270  output.webm

ffmpeg -y -i "output.mp4"   output.webm


-metadata title="poiㄛ"




-fs 3M 
"E:\_BT\[Ohys-Raws] Citrus - 03 (AT-X 1280x720 x264 AAC).mp4"
-ss 00:00:14.0 -to 00:00:44.0
-ss 00:20:40.0 -to 00:21:20.0
-s 360x640
-s 640x360 
-qscale 0
-crf 30 -b:v 0
-fs 3M
fps=10,
-vf "fps=30"
-vf "scale=500:-1"
-s 400x400
-ss 00:00:15.0 -t 00:00:05.0

-crf 30 -b:v 0 //Constant Quality
-crf 30 -b:v 2000k //Constrained Quality
-minrate 1M -maxrate 1M -b:v 1M //Constant Bitrate
-b:v 2M //Average Bitrate (ABR)
-lossless 1 //Lossless VP9

-g 240 //Keyframe Spacing

-c:v libvpx -b:v 1M //vp8
-c:v libvpx-vp9 -b:v 2M //vp9

-deadline  realtime, good, or best//
ffmpeg -f concat -i mylist.txt -c copy output.webm