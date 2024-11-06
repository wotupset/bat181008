echo off
chcp 65001

echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%
set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%

set output=_剪裁_自訂%nnn%.mp4



set /p input=檔案:


set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:3:33.0 -to 0:4:3.0
set tt=-ss 0:2:16.8 -to 0:2:18.8
set tt=
echo %tt%

set vf=-vf "crop=480:480:630:70" 
set vf=-vf "crop=640:640:360:360" 
set vf=-vf "crop=400:300:300:600" 



ffmpeg %tt% -i %input%  %vf% -c:v h264_nvenc -cq 10 -pix_fmt yuv420p -y %output%


pause
exit
set aa=-vf "crop=800:800:560:130" 

-cq 18
-qp 15

set aa=-vf "crop=512:910:54:125" 

馬娘實況 1920x1080 每次位置都不一樣?
set aa=-vf "crop=512:910:55:125" 
set aa=-vf "crop=525:933:64:74" 
set aa=-vf "crop=512:910:68:93" 

馬娘實況 1600x900
set aa=-vf "crop=428:760:44:102" 

橫向長寬
set aa0=-vf "crop=in_h:in_h:in_w/2-in_h/2:0" 
縱向長寬
set aa=-vf "crop=in_w:in_w:0:in_h/2-in_w/2" 
