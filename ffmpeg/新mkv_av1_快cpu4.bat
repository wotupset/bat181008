echo off
chcp 65001



set /p input=檔案:

set output=_output_av1_TEST.mkv

echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt

ffmpeg -i %input% -c:v libsvtav1   -y %output%

echo %date%_%time% >> 時間差.txt


pause
exit
-c:v libsvtav1 
ffmpeg -i %input% -c:v librav1e -qp 128 -speed 10 -tiles 16  -y %output%

-tiles 4
 -qp 1 -speed 10
set wh=800
set crf=-crf 35 -b:v 0

set qqq03=-pix_fmt yuv420p -ac 2 
set qqq04=%crf% 

-b:v 0k



-c:v libaom-av1