echo
chcp 65001


set /p input=檔案:


set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:1:27.6 -to 0:1:31.5
set tt0=
echo %tt%



set aa=-vf "crop=600:800:660:280" 


ffmpeg %tt% -i %input%  %aa% -c:v h264_nvenc -cq 18 -y "剪裁_自訂.mp4"


pause
exit
set aa=-vf "crop=512:910:54:125" 
馬娘實況 
set aa=-vf "crop=512:910:55:125" 

橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 
