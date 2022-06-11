echo off
chcp 65001


set /p input=檔案:



ffmpeg  -i %input%   -vf "scale=iw/2:ih/2,scale=2*iw:2*ih:flags=neighbor" -c:v h264_nvenc -cq 30 -y "簡易馬賽克.mp4"


pause
exit

