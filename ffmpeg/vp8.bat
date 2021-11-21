set /p input=ÀÉ®×:
set output=vp8.webm



ffmpeg -y   -i %input%  -c:v libvpx -crf 5 -b:v 0K  "%output%" 



exit

-crf 30  -cpu-used 4

  -deadline realtime


-b:v 0k