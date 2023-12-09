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
set output=_vp9_快cpu4_%nnn%.webm

set /p input=檔案:

set crf=-crf 50
set crf=-crf 25
set crf=-crf 30
set crf=-crf 32 -b:v 0 
set crf=-crf 50
set crf=-crf 45
set crf=-crf 40
set crf=-crf 35
set crf=


set crf2=-b:v 1500K -minrate 10k -maxrate 1500k 
set crf2=-b:v 500K -minrate 50k -maxrate 500k 
set crf2=-b:v 300K -minrate 300k -maxrate 300k 
set crf2=-b:v 500K -minrate 50k -maxrate 500k 
set crf2=-b:v 2000K -minrate 10k -maxrate 2000k 
set crf2= -b:v 1000K -minrate 10k -maxrate 1000k 
set crf2=-b:v 2500K -minrate 10k -maxrate 3100k 
set crf2=-b:v 1500K -minrate 10k -maxrate 1500k 
set crf2=-b:v 2000K -minrate 2000k -maxrate 2000k 
set crf2=


set wh=400
set wh=480
set wh=512
set wh=640
set wh=720
set wh=800
set wh0=960
set wh0=1024
set wh0=1280
set vf=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=600:800,setsar=1:1"
set vf0=


set qqq03=-map_chapters -1 -map_metadata -1 -ac 2 -pix_fmt yuv420p -sn -dn
set qqq05=-tune-content screen   -static-thresh 214441000 
set cpu01=-row-mt 1 -cpu-used 4 




set ppp01=%crf% %crf2% %vf% %qqq03% %qqq05% %cpu01% 
echo %ppp01%




set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:0:24.0 -to 0:0:34.0
set tt=-ss 0:21:35.0 -to 0:22:10.0
set tt=
echo %tt%








set time0=%date%_%time%
ffmpeg %tt% -i %input% -c:v libvpx-vp9 -c:a libopus -map 0:a:0 -map 0:v:0  -static-thresh 214441000  %ppp01% -y %output%
set time1=%date%_%time%

echo %time0%
echo %time1%

pause
exit
 -static-thresh 214441000 
 
看不出效果
-noise-sensitivity 4

-threads 4 -speed 2
-tile-columns 2 -tile-rows 2


set qqq06=-noise-sensitivity 1 -drop-threshold 1 
set qqq07=-arnr-maxframes 1 -arnr-strength 1 -arnr-type 1 -max-intra-rate 1
set cpu02=-rc_lookahead 1 -lag-in-frames 1 -enable-tpl 0 -aq-mode 0 
set cpu03=-corpus-complexity 1
set ppp01=%crf% %crf2% %qqq03% %qqq04% %qqq05% %qqq06% %qqq07% %cpu01% %cpu02% %cpu03%




set qqq040=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"

set qqq040=-vf "scale=800:450:flags=bilinear,setsar=1:1"

set qqq05=-tune ssim

-speed 4
-hwaccel cuda -threads 1
-speed 1
-hwaccel cuda -threads 1
-speed 2
set af=-af "loudnorm=I=-20.0:print_format=json,volumedetect"
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5:print_format=summary,volumedetect"
ffmpeg -i %output% -c:v copy %af% -y _調整音量n_%output%


-static-thresh 1000 -tune-content screen 
set qqq04=-vf "scale=%wh%:%wh%:flags=lanczos:force_original_aspect_ratio=decrease,setsar=1:1"
set qqq040=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
-undershoot-pct 50 -overshoot-pct 100
set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_
echo %nnn% 




set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_
echo %nnn% 



set af=-af "dynaudnorm"
ffmpeg -i %output% -c:v copy %af% -y _調整音量d_%output%


Adaptive Quantization mode 自適應量化模式
-aq-mode 0


https://developers.google.com/media/vp9/settings/vod/
圖塊數量 執行緒數量
-tile-columns 2 -threads 4
-tile-columns 2 -threads 8 1280x720


ffmpeg -i %output% -af "volumedetect" -vn -sn -dn  -f null -y NUL


set /p input2=音量調整:



set af=-af "loudnorm=I=-20.0:LRA=20.0:TP=-7.0:print_format=json"
set af=-af "loudnorm=I=-20.0:LRA=16.0:TP=-0.0:print_format=summary"


'I, i'
Set integrated loudness target. Range is -70.0 - -5.0. Default value is -24.0.

'LRA, lra'
Set loudness range target. Range is 1.0 - 20.0. Default value is 7.0.

'TP, tp'
Set maximum true peak. Range is -9.0 - +0.0. Default value is -2.0.

./ffmpeg -i /path/to/input.wav -af loudnorm=I=-16:TP=-1.5:LRA=11:measured_I=-27.2:measured_TP=-14.4:measured_LRA=0.1:measured_thresh=-37.7:offset=-0.7:linear=true:print_format=summary output.wav



rename %output% FFF.webm
del FFF.webm



start ""  %output%
 -b:a 50K
-cpu-used 4

到指定大小後 就停止轉檔
-fs 5M
set crf=-b:v 200K  -minrate 200k -maxrate 200k 

set tt=-ss 0:0:0.0 -to 0:7:0.0
set tt=
echo %tt%

-cpu-used 4
-deadline good -speed 4


-deadline good -speed 4 
-deadline realtime -speed 4 

set crf=-b:v 200K  -minrate 200k -maxrate 200k 

set af=-af "volume=+1dB,volumedetect"
set af=-af "volumedetect"
set af=-af "loudnorm=I=-20:TP=-2:LRA=7,volumedetect"
set af=

-tile-columns 1 -tile-rows 0 -frame-parallel 0 -lag-in-frames 20 -auto-alt-ref 1

-deadline good -speed 4
-static-thresh 100 -drop-threshold 100

-cpu-used 4
--auto-alt-ref=<arg>             (0= disabled, 1=enabled <default 0>)
--lag-in-frames=<arg>            (0-25 : recommended value 16)


-b:v 0
-hide_banner 可以隐藏不必要的多余讯息


-static-thresh 1000
-static-thresh 2000
-static-thresh 200

-c:a libopus 

:flags=neighbor

-static-thresh 100

-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease:flags=fast_bilinear,setsar=1:1"
ffmpeg -i %output% -af "volumedetect" -f null -y nul


 -vf "scale=800:800,setdar=9/16"
-vf "scale=1280:720,setdar=16/9"

,setsar=1/1


-s 800x800

-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease"
-cpu-used 4 
-pix_fmt yuv420p

-af "loudnorm=i=-25" 

,unsharp=5:5:1.0:5:5:0.0

 -vf "unsharp=5:5:1.0:5:5:0.0"
-vf unsharp


 -af "loudnorm=i=-20" 

-b:a 0K
-b:v 0K
 -af "loudnorm=i=-20" 



@echo off



-af "volume=-5dB"
 -tune-content screen 

-metadata DATE_ENCODED="%nnn%" 


 -deadline realtime  -cpu-used 4
預設=32秒
cpu4=18秒
cpu4+rt=16秒
rt=94秒

set vcootime_hh=%time:~0,2%
set vcootime_mm=%time:~3,2%
set vcootime_ss=%time:~6,2%

echo %vcootime_hh%
echo %vcootime_mm%
echo %vcootime_ss%

set vcootime_hh2=%time:~0,2%
set vcootime_mm2=%time:~3,2%
set vcootime_ss2=%time:~6,2%

echo %vcootime_hh2%
echo %vcootime_mm2%
echo %vcootime_ss2%

set /a vcootime_hh3 = %vcootime_hh2% - %vcootime_hh%
set /a vcootime_mm3 = %vcootime_mm2% - %vcootime_mm%
set /a vcootime_ss3 = %vcootime_ss2% - %vcootime_ss%

echo %vcootime_hh3%
echo %vcootime_mm3%
echo %vcootime_ss3%



-af "loudnorm=i=-20,volume=5dB" 

-af "volume=5dB"
 -af "loudnorm=i=-15"
-deadline realtime  -cpu-used 4


-af "loudnorm=i=-25"
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