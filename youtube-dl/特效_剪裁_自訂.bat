echo
chcp 65001


set /p input=檔案:


set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:4:37.5 -to 0:5:2.5
set tt=
echo %tt%




set aa=-vf "crop=360:360:480:305" 
set aa=-vf "crop=1000:563:427:168" 

ffmpeg %tt% -i %input%  %aa% -c:v h264_nvenc -qp 15 -y "_剪裁_自訂.mp4"


pause
exit
set aa=-vf "crop=800:800:560:130" 

-cq 18
- 18

set aa=-vf "crop=512:910:54:125" 
馬娘實況 
set aa=-vf "crop=512:910:55:125" 

橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 
