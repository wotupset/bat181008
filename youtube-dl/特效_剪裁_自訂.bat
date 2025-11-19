echo off
chcp 65001

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set "rand=%RANDOM%"
set "rand=00000%RANDOM%"
set "rand=%rand:~-5%"

set nnn=%vardate%_%vartime%_%rand%
echo %nnn%



set /p input=檔案:


set tt=-ss 0:0:1.5 -t 0:0:17.5
set tt=-ss 0:3:33.0 -to 0:4:3.0
set tt=-ss 0:0:12.2 -to 0:0:15.35
set tt=-ss 0:2:6.5 -to 0:2:20.3
set tt0=
echo %tt%

set vf=-vf "crop=640:640:640:180" 
set vf=-vf "crop=600:420:500:150" 
set vf=-vf "crop=440:440:15:640" 

set output=_剪裁_自訂%nnn%.mp4


ffmpeg %tt% -i %input%  %vf%  -c:v h264_nvenc -pix_fmt yuv420p -qp 10 -y %output%


pause
exit
 -b:v 4000K 
-pix_fmt yuv420p -qp 10


-b:v 4000K
-c:v libvpx-vp9 -c:a libopus 
-c:v h264_nvenc -qp 10


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
