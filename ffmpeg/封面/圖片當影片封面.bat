..\ffmpeg -y -loop 1 -i "01.webp" -t 10   -vf "setsar=1:1" -c:v h264_nvenc  -an  "01x.mp4"
..\ffmpeg -y -stream_loop 5 -i "01x.mp4" -c copy "01x_loop.mp4"
..\ffmpeg -y -stream_loop 9 -i "01x_loop.mp4" -c copy "01x_loop5.mp4"
del "01x.jpg"
del "01x.mp4"
del "01x_loop.mp4"


..\ffmpeg -y  -ss 0:15:20.0 -to 0:19:30.0 -i "01.mp3"  -f mp3  "01x.mp3"


16.0
18.0



..\ffmpeg -y -i "01x.mp3" -i "01x_loop5.mp4" -shortest -map 0:a -map 1:v   -r 120 -pix_fmt yuv420p -c:v h264_nvenc  "FFF.mp4"
..\ffmpeg -y -i "FFF.mp4"  %qqq03%  -r 5 -c:v h264_nvenc -cq 35 -preset p1   "cover.mp4"

del "01x.mp3"
del "01x_loop5.mp4"
del "FFF.mp4"


..\ffmpeg -i "cover.mp4" -af "volumedetect" -f null -y nul




pause
exit

-qp 30 
-qp 35

-cq 30
-cq 35
-preset p1 對應的是fastest

圖片縮放
..\ffmpeg -y -i "01.webp" -vf "scale=800:-2" "01x.jpg" 
..\ffmpeg -y -loop 1 -i "01x.jpg" -t 10   -vf "setsar=1:1" -c:v h264_nvenc   -an  "01x.mp4"


 -af "loudnorm=i=-20" 

-ss 00:8:30.0 -to 0:10:30.0
-preset fast
-preset p2  比fast更快的faster
 -map_chapters -1 -map_metadata -1 

-map 0:a
-dn disable data
-pix_fmt yuv420p -preset fast 

-tune stillimage

-qp 30
-cq 30

-ss 00:7:45.0 -to 0:9:45.0 a

-ss 00:6:55.0 -to 0:8:55.0 c

幀數不夠高 封面影片後面會有空白時間
 -r 120

 -preset faster -tune stillimage

..\ffmpeg  -ss 00:8:45.0 -to 00:11:0.0 -y  -i "01.mp3"   -f mp3  "01x.mp3"


set oo1=^
-i "01x.mp3"  ^
-loop 1 -i "01x.jpg" ^
-shortest -map 0:a -map 1:v 

echo %oo1%


..\ffmpeg -y    %oo1%    -vf "scale=480x360,setsar=1:1"  -max_interleave_delta 200M -max_muxing_queue_size 9999   "FFF.mp4"


set qqq03= -pix_fmt yuv420p -ac 2 -r 5 

..\ffmpeg -y  -i "FFF.mp4"    %qqq03%   -c:v h264_nvenc -cq 35 "cover.mp4"

del "01x.jpg"
del "01x.mp3"
del "FFF.mp4"
start "" "cover.mp4"

pause
exit

-max_muxing_queue_size 100M
-r 60 


-filter:v "setpts=0.016667*PTS"
这是起到加速作用的关键参数， 1/60 = 0.0166667，因此这里这样写


-preset faster 
-preset help

-tune zerolatency
-tune stillimage



-af "loudnorm=i=-20"

-s 480x360
-ss 00:8:0.0 -to 00:10:0.0

-map_chapters -1 -map_metadata -1 
-pix_fmt yuv420p -ac 2 

-vf format=yuv420p



再轉一次 是避免有些app無法讀取合併後的mp4

-ss 00:4:32.0 -to 00:8:52.0

-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌
-vf scale=320:240

-vf scale=iw*2:ih   iw =輸入寬度，ih =輸入高度 