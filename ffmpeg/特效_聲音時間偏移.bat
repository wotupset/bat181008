echo
chcp 65001


set /p input=檔案:




ffmpeg -i %input% -itsoffset +0.2 -i %input% -map 0:v -map 1:a -c:v copy -c:a copy -y  聲音時間偏移.mp4



pause
exit

ffmpeg  -i %input%   -vf "crop=in_h:in_h:in_w/2-in_h/2:0" -c:v h264_nvenc -cq 30 -y "剪裁_中央正方形.mp4"
