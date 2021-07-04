ffmpeg -i "01.jpg" -vf "scale=800:600" "01x.jpg"



ffmpeg  -ss 00:12:7.0 -to 00:14:7.0 -y  -i "01.mp3"  -preset faster -tune stillimage  -f mp3  "01x.mp3"


set oo1=^
-i "01x.mp3"  ^
-loop 1 -i "01x.jpg" ^
-shortest -map 0:a -map 1:v 

echo %oo1%


ffmpeg -y    %oo1%     -vf "scale=480x360,setsar=1:1"  "FFF.mp4"


set qqq03= -pix_fmt yuv420p -ac 2 -r 5 

ffmpeg -y  -i "FFF.mp4"    %qqq03%   -c:v h264_nvenc -cq 30 "cover.mp4"


del "01x.mp3"
del "FFF.mp4"
start "" "cover.mp4"

pause
exit

-preset faster 
-preset help

-tune zerolatency
-tune stillimage



-af "loudnorm=i=-20"

-s 480x360
-ss 00:8:0.0 -to 00:10:0.0

-map_chapters -1 -map_metadata -1 
-pix_fmt yuv420p -ac 2 

再轉一次 是避免有些app無法讀取合併後的mp4

-ss 00:4:32.0 -to 00:8:52.0

-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌
-vf scale=320:240

-vf scale=iw*2:ih   iw =輸入寬度，ih =輸入高度 