chcp 65001
@echo off
echo 很慢 不要用

pause
exit



set /p input=檔案:

set output=_output_av1_快.webm

set wh=800
set crf=-crf 35 -b:v 0

set qqq03=-pix_fmt yuv420p -ac 2 -cpu-used 4 -usage good -aq-mode 0 
set qqq04=%crf% 


@echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt

ffmpeg -i %input% -c:v librav1e -c:a libopus %qqq03% %qqq04% -f webm -y %output%

echo %date%_%time% >> 時間差.txt


pause
exit
-b:v 0k



-c:v libaom-av1