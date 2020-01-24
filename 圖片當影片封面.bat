set oo1=^
-i "01.mp4" ^
-loop 1 -i "01.jpg" 


echo %oo1%

set oo2=^
-shortest ^
-map 0:a -map 1:v 


echo %oo2%


ffmpeg -y  %oo1% %oo2%  "圖片當影片封面.mp4"


pause
exit
-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌
-vf scale=320:240

-vf scale=iw*2:ih   iw =輸入寬度，ih =輸入高度 