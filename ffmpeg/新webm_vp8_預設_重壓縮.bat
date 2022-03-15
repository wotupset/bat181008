set /p input=檔案:
set output=_vp8.webm


set tt=-ss 0:16:0.0 -to 0:18:0.0 
set tt=
echo %tt%


set oo4= -c:v libvpx -c:a libopus  -pix_fmt yuv420p  -cpu-used 4 -static-thresh 200 
echo %oo4%


echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt


ffmpeg  %tt%  -i %input% %oo4%   -s 450x450 -af "volumedetect" -y  "%output%" 


echo %date%_%time% >> 時間差.txt



for %%F in ( %output% ) do echo %%~zF %%F


pause
exit


-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect"
-s 480x270
-c:v libvpx


-static-thresh 10
-rc_lookahead 10
-lag-in-frames 10 


-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease" 

-c:a libopus 
-c:a libvorbis 舊版音訊格式 檔案較大
 -threads 8
 -cpu-used 4

-vf "scale=360:360,setdar=16/9"

-s 640x640
-crf 10
-quality best 
ffmpeg -y   -i %input%  -c:v libvpx -crf 5 -b:v 0K  "%output%" 
-crf 30  -cpu-used 4

  -deadline realtime


-b:v 0k