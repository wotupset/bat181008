set /p input=�ɮ�:
set output=vp8.webm



ffmpeg    -i %input%  -c:v libvpx -c:a libopus    -vf "scale=360:360,setdar=16/9" -pix_fmt yuv420p  -cpu-used 4 -y  "%output%" 



exit
-s 640x640
-crf 10
-quality best 
ffmpeg -y   -i %input%  -c:v libvpx -crf 5 -b:v 0K  "%output%" 
-crf 30  -cpu-used 4

  -deadline realtime


-b:v 0k