echo
chcp 65001


set /p input=檔案:



ffmpeg  -i %input%    -vf "crop=in_w:in_w:0:in_h/2-in_w/2" -c:v h264_nvenc -cq 30 -y "剪裁_中央正方形.mp4"


pause
exit


 -vf "crop=in_h:in_h:in_w/2-in_h/2:0" 橫向長寬

 -vf "crop=in_w:in_w:0:in_h/2-in_w/2" 縱向長寬