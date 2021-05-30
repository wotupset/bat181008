set oo1=^
-i "01.mp3"  ^
-loop 1 -i "01.jpg" ^
-shortest -map 0:a -map 1:v 

echo %oo1%

set oo2=
echo %oo2%

set oo3=
echo %oo3%


ffmpeg -y  %oo1%   -r 5 -af "loudnorm=i=-20"  -ss 00:13:00.0 -to 00:16:30.0  "222.mp4"


pause
exit
-ss 00:4:32.0 -to 00:8:52.0

-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌
-vf scale=320:240

-vf scale=iw*2:ih   iw =輸入寬度，ih =輸入高度 