
chcp 65001



set date1=%date:~3,20%%
set vardate=%date1:~2,2%%date1:~5,2%%date1:~8,2%
set vartime1=%time:~0,2%
if /i %vartime1% LSS 10 (set vartime1=0%time:~1,1%)
set vartime=%vartime1%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set nn3=%nnn%_1orig
echo %nn3%
mkdir %nn3%


set nn2=%nnn%_2webp
echo %nn2%
mkdir %nn2%


set wh=2048
set vf=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease"
set vf=-vf "scale='min(%wh%,iw)':'min(%wh%,ih)':flags=bilinear:force_original_aspect_ratio=decrease"
set vf=
echo %vf%

set qq=-quality 50
set qq=-quality 75
set qq=-quality 80
set qq=-quality 90
set qq=-quality 95
set qq=-quality 99
set qq=-lossless 1
set qq=-quality 50
set qq=
echo %qq%

set ppp01=%vf% %qq%
set ppp01=
echo %ppp01%

for %%a in ("*.jpg","*.png") do (
E:\_ffmpeg\_ffmpeg\ffmpeg.exe -i "%%a" -c:v libwebp  %ppp01% -y "%nn2%/%%~na.webp"
move "%%a" ./%nn3%/
)

pause

exit




-lossless 1
-quality 99
-quality 95
"*.jpg",

-c:v libwebp


原始jpg 500k
90k 預設 
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