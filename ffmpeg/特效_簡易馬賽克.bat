echo
chcp 65001


set /p input=檔案:



ffmpeg  -i %input%  -c:v h264_nvenc  -vf "scale=iw/8:ih/8,scale=8*iw:8*ih:flags=neighbor" -y "FFF.mp4"


pause
exit

