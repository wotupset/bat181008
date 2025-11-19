echo off
chcp 65001
title 測試

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






ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=font='Microsoft JhengHei':text='浮水印':x=10:y=10:fontsize=50:fontcolor=#FFFFFF:borderw=3:bordercolor=#00FF00" -y output_rgba.mp4

cmd
exit

ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=font='Microsoft JhengHei':text='浮水印':x=10:y=10:fontsize=50:fontcolor=white@0.7:borderw=2:bordercolor=black:shadowcolor=red@0.5:shadowx=3:shadowy=3" -y output_pro.mp4


ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=font='Microsoft JhengHei':text='浮水印':x=10:y=10:fontcolor=white:fontsize=50" -y output.mp4


font='SDK_TW_Web'

ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=font='Microsoft JhengHei':text='%%{n},%%{pts}':x=10:y=10:fontcolor=white:fontsize=50" -y output.mp4


ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=fontfile=msjh.ttf:text='%%{n} %%{pts}':x=10:y=10:fontcolor=white:fontsize=50" -y output.mp4

ffmpeg -f lavfi -i gradients=type=spiral:nb_colors=4:speed=0.1 -t 10 gradient.mp4
ffmpeg -f lavfi -i cellauto=rule=126:rate=30 -t 5 auto.mp4
ffmpeg -f lavfi -i mandelbrot -t 10 fractal.mp4
ffmpeg -f lavfi -i life,fade=in:0:100 -frames:v 200 -y life.mp4


set /p input=檔案:
echo %input%

ffmpeg -i %input% -c:v h264_nvenc -t 10 -vf "drawtext=font='Microsoft JhengHei':text='%%{n} %%{pts}':x=10:y=10:fontcolor=white:fontsize=50:" -y output.mp4



ffmpeg -i %input% -c:v h264_nvenc -t 10 -vf "drawtext=font='Microsoft JhengHei':text='%ddd%':x=10:y=10:fontcolor=white:fontsize=50:timecode='00\:00\:00\:000'" -y output.mkv
ffmpeg -i %input% -c:v h264_nvenc -t 10 -vf "drawtext=font='Microsoft JhengHei':text='%%{n} %%{pts}':x=10:y=10:fontcolor=white:fontsize=50" -y output.mp4

fontfile=msjh.ttf




右下 畫中畫
ffmpeg -i %input% -f lavfi -i testsrc=size=400x300:rate=25 -filter_complex "[1:v]format=yuv420p[pip];[0:v][pip]overlay=x=main_w-overlay_w-10:y=main_h-overlay_h-10:shortest=1[v]" -map "[v]" -map 0:a -c:v h264_nvenc -t 10 -c:a copy -y  output_with_testsrc_pip.mp4

左上 畫中畫
ffmpeg -i %input% -f lavfi -i testsrc=size=400x300:rate=25 -filter_complex "[1:v]format=yuv420p[pip];[0:v][pip]overlay=x=10:y=10:shortest=1[v]" -map "[v]" -map 0:a -c:v h264_nvenc -t 10 -c:a copy -y  output_with_testsrc_pip.mp4





ffmpeg -f lavfi -i testsrc=size=1280x720 -t 10 -vf "drawtext=fontfile=msjh.ttf:text='%%{n} %%{pts}':x=10:y=10:fontcolor=white:fontsize=50" -y output.mp4



-vf "drawtext=fontfile=Arial.ttf: text='%{frame_num}': start_number=1: x=10: y=10: fontcolor=black: fontsize=20: box=1: boxcolor=white: boxborderw=5" 

ffmpeg -f lavfi -i testsrc -t 10 -pix_fmt yuv420p testsrc.mp4

ffmpeg -f lavfi -i smptebars -t 30 smpte.mp4


set /p input=檔案:
echo %input%




ffmpeg -f lavfi -i smptebars=d=5:s=1280x720:r=25 -pix_fmt yuv420p smptebars.mp4


ffmpeg  -i %input% -c:v libvpx-vp9 -pix_fmt yuv420p -r 5 -c:a copy -y 01.webm


ffmpeg -h filter=scale


ffmpeg  -i %input% -t 20 -vn -y FFF%nnn%.mp3


-c:v libx264
-c:v libx264rgb


ffmpeg -i 01.mp4 -i 02.mp4 -filter_complex xfade=transition=distance:duration=2:offset=10 -y distanceVideo.mp4



set /p input=檔案:
echo %input%

ffmpeg -i %input% -c:v libvpx-vp9 -b:v 2000k -pass 1 -an -f webm NUL && ^
ffmpeg -i %input% -c:v libvpx-vp9 -b:v 2000k -pass 2 -c:a libopus -b:a 128k output.webm






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




