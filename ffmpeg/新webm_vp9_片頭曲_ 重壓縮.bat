set /p input=檔案:

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set output=_output_vp9_oped.webm



set af=-af "volume=-10dB,volumedetect"
set af=-af "loudnorm=I=-20:TP=-1:LRA=6,volumedetect"
set af=-af "volumedetect"



set tt=-ss 0:16:0.0 -to 0:18:0.0 
set tt=
echo %tt%

set wh=800
set wh=640
set wh=400
set wh=480



set crf=-crf 40
set crf=-crf 55
set crf=-crf 45
set crf=-crf 40
set crf0=



set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 1   -row-mt 1  -sn -dn -tune-content screen 
set qqq04= %af% %crf% 


echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt

ffmpeg %tt% -i %input% %qqq03%    -c:v libvpx-vp9 -c:a libopus  -b:v 200K  -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease"  -y %output%

echo %date%_%time% >> 時間差.txt


for %%I in ( %output% ) do @echo %%~zF %%F


start ""  %output%





pause



exit 
pause

-static-thresh 1000
for %%F in ( %output% ) do @echo %%~zF %%F 檔案大小
 

-b:a 50K -b:v 500K
 -deadline realtime  -cpu-used 5 

-b:a 96K

-c:a libopus
-c:a libvorbis

-b:v 500K -maxrate 500K -bufsize 100K 

ffmpeg -y -i %input% %qqq03% -c:v libvpx-vp9  -deadline realtime  -cpu-used 5  -crf 40  -vf "scale=400:400:force_original_aspect_ratio=decrease"  %output%




-b:a 96K