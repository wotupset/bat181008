echo off
chcp 65001



set date1=%date:~3,20%%
set vardate=%date1:~2,2%%date1:~5,2%%date1:~8,2%
set vartime1=%time:~0,2%
if /i %vartime1% LSS 10 (set vartime1=0%time:~1,1%)
set vartime=%vartime1%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set wh=800
set wh=2048

set nn2=webp_%nnn%
echo %nn2%
mkdir %nn2%

set nn3=orig_%nnn%
echo %nn3%
mkdir %nn3%

for %%a in ("*.jpg","*.jpeg","*.png") do (
E:\_ffmpeg\_ffmpeg\ffmpeg.exe -i "%%a" -c:v libwebp  -vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease" -y "%nn2%/%%~na.webp"
move "%%a" ./%nn3%/

)

pause

exit
-c:v libwebp


原始jpg 500k
預設 90k 
-quality 75
110k 
-quality 80
180k
-quality 90
65k
-quality 50

-pix_fmt bgra
-pix_fmt yuv420p
-lossless 1