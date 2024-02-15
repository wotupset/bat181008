echo
chcp 65001


set /p input=檔案:


set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:1:10.0 -to 0:1:16.0
set tt0=
echo %tt%




set aa=-vf "crop=512:910:54:125" 
set aa=-vf "crop=640:640:480:260" 
set aa=-vf "crop=600:800:850:120" 
set aa=-vf "crop=900:900:0:390" 

ffmpeg %tt% -i %input%  %aa% -c:v h264_nvenc -cq 10 -y "_剪裁_自訂.mp4"


pause
exit
set aa=-vf "crop=800:800:560:130" 

-cq 18
-qp 15

set aa=-vf "crop=512:910:54:125" 
馬娘實況 1920x1080
set aa=-vf "crop=512:910:55:125" 
馬娘實況 1600x900
set aa=-vf "crop=428:760:44:102" 

橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 
