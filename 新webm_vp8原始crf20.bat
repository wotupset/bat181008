set /p input=ÀÉ®×:
set output=_output_vp8_¹w³].webm



ffmpeg -y   -i %input%  -c:v libvpx -crf 30 -b:v 0k  -deadline realtime -cpu-used 8 "%output%" 

for %%F in ( %output% ) do @echo %%~zF %%F

start "" "%output%" 

pause
exit 
pause
-g 1000 -crf 30 -b:v 1000k
 -cpu-used 4 -deadline realtime


 -deadline realtime

-ss 00:00:39.5 -t 00:00:7.0
 -crf 20 -b:v 0k

-crf 20 -b:v 0
 -b:v 1000k  -sharpness 1 -tune psnr -quality best -deadline best