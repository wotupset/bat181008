echo
chcp 65001


set /p input=檔案:



ffmpeg  -i %input%   -vf "scale=iw/4:ih/4,scale=4*iw:4*ih:flags=neighbor" -c:v h264_nvenc -cq 30 -y "FFF.mp4"


pause
exit

