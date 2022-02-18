set /p input=檔案:

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%


set output=_output_vp9_快_無聲.webm


set an=-an
set an=

set aq=-aq-mode 0
set aq=



set wh=1440
set wh=1024
set wh=1280


set wh=800

set wh=400
set wh=480
set wh=640



set crf=-crf 50
set crf=-crf 30
set crf=-crf 45
set crf=-crf 40
set crf=-crf 35

set crf=-crf 40
set crf0=


set tt=-ss 0:0:0.0 -to 0:0:0.0
set tt=
echo %tt%


set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p -ac 2   -cpu-used 4  -row-mt 1  -sn -dn -an 


ffmpeg -y %tt% -i %input% -c:v libvpx-vp9  -c:a libopus     -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease" %qqq03%  %output%




ffmpeg -i %output% -af "volumedetect" -f null -y nul




start ""  %output%




pause
exit


 -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,unsharp=5:5:1.0:5:5:0.0"

set qqq04=-metadata DATE_ENCODED="%nnn%"  %an% %aq% %crf% 


 -tune-content screen


-af "loudnorm=i=-20"
 -af "loudnorm=i=-20" 音量正常化

 -b:v 120k -b:a 120k 
 -deadline realtime  -cpu-used 4

 -tune-content screen
-b:v 500k  -maxrate 500k -minrate 20k

-dn                 disable data
-sharpness 7 檔案變大了
-tile-rows 2 -tile-columns 2 無感?
-arnr_strength 6 無感?
ffmpeg -i input.mp4 -c:v libvpx-vp9 -minrate 1M -maxrate 1M -b:v 1M output.webm
-b:v 1000k  -maxrate 1000k -minrate 100k


 -b:v 900K -maxrate 900K -r 30 
-deadline realtime   -cpu-used 4
-row-mt 1 
-f webm

 -deadline realtime  -cpu-used 4 -crf %crf% 


-aq-mode 0
-b:a 50K
-b:v 500K -maxrate 500K -bufsize 100K 
-b:v 1000K -maxrate 1000K
-crf %crf%

 -deadline realtime  -cpu-used 5 

set tt=-ss 0:0:0.0 -to 0:0:0.0 
-deadline realtime  -cpu-used 5  -crf 45

-b:a 96K

 -af "loudnorm=i=-25" 
-af "loudnorm=i=-22"


-deadline realtime  -cpu-used 5


 -b:v 300K -maxrate 300K -bufsize 100K 


-crf 45 -b:v 0K

-af "loudnorm=i=-20" 

 -af "loudnorm=i=-24" 預設=-24  -20變大聲 -30變小聲

-c:a libopus

pause


-crf 35
set tt=-ss 00:0:00.0 -to 00:0:10.0 

-crf 30  -b:v 1500K -maxrate 1500K -bufsize 500K 

 -af "loudnorm=i=-20" 
 -af "loudnorm=i=-20" 


-b:v 640K -maxrate 640K -bufsize 64K
-crf 30 預設自帶 -b:v 0K
-b:v 3000K
-af "loudnorm=i=-20" 
-g 9999 以幀為單位設置關鍵幀間隔（默認為240）
-cpu-used = -speed (舊稱)
-deadline = -quality (舊稱)
 -row-mt 1 開啟多核心支援

-crf 30 -b:v 0  模式Q
-crf 30 -b:v 1000K -maxrate 1000K -bufsize 500K  模式CQ


ffmpeg -y  -i %input% %qqq03% -c:v libvpx-vp9 -deadline realtime  -cpu-used 5   -crf 35 -vf "scale=800:800:force_original_aspect_ratio=decrease"  %output%

-vf "scale=640:360:force_original_aspect_ratio=decrease"

音量
 -af "volume=5dB"


檔案大小(位元)
for %%F in ( %output% ) do @echo %%~zF %%F



-b:v 1M
-ss 00:0:00.0 -to 00:0:10.0 


-b:v 0M


-aq-mode 2 沒感覺有差


-movflags faststart
-itsoffset 5 -fs 5000k 


-b:v 0k
-deadline realtime

-sharpness 1 -tune psnr

-sharpness 1 -tune ssim -deadline best  -quality best 


-speed 4 
-row-mt 1 

:aaa
GOTO aaa

-crf 25 -b:v 0


set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 2 ^
-metadata title="標題" ^
-metadata ARTIST="ARTIST" ^
-metadata comment="comment" ^
-metadata description="description" ^
-metadata copyright="%nnn%" 



 -c:a libopus

-b:v 1000k -minrate 500k -maxrate 1000k
  -crf 20 -b:v 0 

 -ss 00:0:00.0 -to 00:0:10.0 


set qqq01=_output_a.mp4
-row-mt 1
set /p qqq01=檔案:
 -ss 00:0:05.0 -to 00:0:20.0 
-c:v libvpx -b:v 2000k -minrate 1000k
-crf 23 -b:v 0
-vf "scale=640:640:force_original_aspect_ratio=decrease"
-vf "scale=480:480:force_original_aspect_ratio=decrease"

vp8不支援
-tile-columns 4 
-frame-parallel 1 
-aq-mode 1


-ss 00:0:00.0 -to 00:0:30.0 
-crf 23 -b:v 1000k -minrate 1000k -maxrate 1000k -slices 4 -threads 4 



-b:v 2500k
-crf 10 -b:v 1M
-crf 10 -b:v 0
ffmpeg -y -i "%qqq01%" -c:v libvpx -crf 10 -b:v 0 -g 150 -slices 4 -threads 4 -tile-columns 4    -vf scale=640:640:force_original_aspect_ratio=decrease  "%qqq02%" 

ffmpeg -y -i "%qqq01%" -c:v libvpx -crf 10 -b:v 0 -g 150 -speed 4 -slices 4 -threads 4 -tile-columns 4 "%qqq02%" 
set ppp01=_output_a.mp4


ffmpeg -y -i "%qqq01%" -c:v libvpx   -crf 20 -b:v 0  -speed 4 "%qqq02%" 

-speed 4
-slices 4 


-crf 20 -b:v 0  -c:a libopus 
-f yuv4mpegpipe
-cpu-used 使用cpu核心數量
-g 150 關鍵幀之間最多有150幀


-deadline good  

-cpu-used 0
-threads 4 
-deadline realtime

-aq-mode 0 
-crf 25 -b:v 0

ffmpeg -loop 1 -i "1538929485083.jpg" -i "01.mp3" -ss 00:0:00.0 -to 00:0:30.0 -r 10 -y video.mp4
ffmpeg -r 1    -i "1538929485083.jpg" -i "01.mp3" -ss 00:0:00.0 -to 00:0:30.0 -r 10 -y output.mp4

-ss 00:0:00.0 -t 00:0:30.0

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