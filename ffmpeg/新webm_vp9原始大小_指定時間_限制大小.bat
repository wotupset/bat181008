echo off
chcp 65001

set /p input=檔案:

set output=_output_vp9_原始大小.webm



set crf=-crf 30
set crf=-crf 20

set crf=-crf 50
set crf=-crf 45
set crf=-crf 40 
set crf=-crf 35
set crf=



set qqq04=-ac 2 -pix_fmt yuv420p -static-thresh 1000
set qqq05=-row-mt 1  -tile-columns 2 -threads 6 -fs 8M 

echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt

set tt=-ss 0:0:3.0 -to 0:0:33.0
set tt0=
echo %tt%


ffmpeg  %tt% -i %input%  -c:v libvpx-vp9 -c:a libopus   %crf% %qqq04% %qqq05%  -y %output%

echo %date%_%time% >> 時間差.txt









pause
exit 
start "" %output%
 -b:v 2500K  -minrate 500k -maxrate 3000k  
 
 -an
-c:a libopus 

ffmpeg -i %output% -af "volumedetect" -f null -y nul

-vf "smartblur=0.5:0.5:0"

-pix_fmt yuv420p 

-vf "smartblur=1:-1:0" 銳利?
-vf "smartblur=1:1:0" 模糊

  -vf "unsharp=5:5:1.0:5:5:0.0"
 -vf "unsharp=5:5:1.0:5:5:0.0"


 -tune-content screen 

-deadline realtime  -cpu-used 4 

-deadline realtime  -cpu-used 4 




-aq-mode 0


-af "loudnorm=i=-22"

-deadline realtime -cpu-used 5

-b:v 3000K -maxrate 3000K -bufsize 500K
-deadline realtime -cpu-used 5

 -r 5
-af "loudnorm=i=-20"

-deadline realtime -cpu-used 5
-deadline realtime -cpu-used 8 
-c:v libvpx-vp9 
-c:v libvpx

pause
-aq-mode 2  沒差別?
-crf 20

-movflags faststart
-c:v libvpx-vp9 -crf 25  -deadline realtime -cpu-used 8 
-c:v vp9_qsv

-b:a 32k 
-threads 4 -speed 4
-row-mt 1 -tile-rows 1 
-row-mt 1 -tile-rows 1 -tile-columns 1
-crf 10
-crf 20 -b:v 0k 
 -deadline realtime -cpu-used 8
 -b:v 1000k  -sharpness 1 -tune psnr -quality best -deadline best 

-row-mt 1


-aq-mode 0 
-crf 25 -b:v 0
 -c:a libopus
ffmpeg -loop 1 -i "1538929485083.jpg" -i "01.mp3" -ss 00:0:00.0 -to 00:0:30.0 -r 10 -y video.mp4
ffmpeg -r 1    -i "1538929485083.jpg" -i "01.mp3" -ss 00:0:00.0 -to 00:0:30.0 -r 10 -y output.mp4

-ss 00:0:00.0 -t 00:0:30.0


set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 2 ^
-metadata title="標題" ^
-metadata ARTIST="ARTIST" ^
-metadata comment="comment" ^
-metadata description="description" ^
-metadata copyright="%nnn%" 


-c:v copy -c:a copy

-c:v libvpx-vp9 -crf 30 -b:v 0
-c:v libvpx-vp9 -b:v 1M
-c:v libvpx-vp9 -pix_fmt yuv420p

-r 30
-g 30
-c:v libvpx -cpu-used 2  -speed 4


-c:v libvpx -deadline realtime -cpu-used 2
-c:v libvpx -deadline realtime

_output_aa.mp4

 -speed 4
-ss 00:20:00.0 -to 00:20:30.0
-threads 8 
-speed 4
-speed 1

-s 640x360
-s 400x300
-s 360x640


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