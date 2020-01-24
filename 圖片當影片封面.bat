set oo1=^
-i "01.mp4" ^
-loop 1 -i "01.jpg" 


echo %oo1%

set oo2=^
-shortest ^
-map 0:a -map 1:v 


echo %oo2%


ffmpeg -y  %oo1% %oo2%  "output.mp4"


pause
exit
-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌