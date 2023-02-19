echo
chcp 65001


set /p input=檔案:

橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 


ffmpeg  -i %input%  %aa% -c:v h264_nvenc -cq 20 -y "剪裁_中央正方形.mp4"


pause
exit


橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 
