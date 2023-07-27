chcp 65001
echo off
set /p input=檔案:

echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%
 
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%
set output=無聲抖音_%nnn%_.webm



set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:0:0.0 -to 0:0:20.0
set tt=
echo %tt%



set wh=800
set vf=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=450:800:flags=bilinear,setsar=1:1"
set vf0=
echo %vf%



ffmpeg -i %input% -c:v h264_nvenc -qp 10 %vf% -an -y "無聲.mkv"




ffmpeg -hwaccel cuda -threads 1 -i "無聲.mkv" ^
-c:v libvpx-vp9 -c:a libopus -speed 2 -crf 35  ^
-y %output%



pause
exit
-c:v copy

-map 0:a

set input=_output_a_201003_181723_17922_.mp4




-vf "scale=400:-1:flags=lanczos,palettegen"
-filter_complex "fps=15,scale=400:-1:flags=lanczos,paletteuse"


ffmpeg -y -i "_output_aa.mp4" -vf "scale=-1:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "_output_aa.mp4" -i palette.png  -filter_complex "scale=-1:-1:flags=lanczos,paletteuse" output.gif


-r 2  -b:v 100k 
ffmpeg -y -i "01.mp4" -i palette.png  -filter_complex "fps=2,scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
