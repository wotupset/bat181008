echo off
chcp 65001

echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt




..\ffmpeg -loop 1 -i "01.webp" -t 10 -s 400x300 -c:v h264_nvenc -pix_fmt yuv420p -preset fast -an -y "01x.mp4"
..\ffmpeg -stream_loop 5 -i "01x.mp4" -c copy -y "01x_loop.mp4"
..\ffmpeg -stream_loop 9 -i "01x_loop.mp4" -c copy -y "01x_loop5.mp4"
del "01x.mp4"
del "01x_loop.mp4"


..\ffmpeg -ss 0:27:0.0 -to 0:14:.0 -i "01.mp3"    -f mp3 -y "01x.mp3"


11.30






..\ffmpeg -i "01x.mp3" -i "01x_loop5.mp4"  -shortest -map 0:a -map 1:v  -bufsize 1M  -r 120  -pix_fmt yuv420p -c:v h264_nvenc  -cq 35  -y "FFF.mp4"
..\ffmpeg -i "FFF.mp4"   -map_chapters -1 -map_metadata -1    -r 5 -ac 2  -c:v h264_nvenc  -cq 35 -y "02cover_%RANDOM%.mp4"

del "01x.mp3"
del "01x_loop5.mp4"
del "FFF.mp4"


echo %date%_%time% >> 時間差.txt

exit
pause
exit

音量正常化 音質會變差
set af=-af "loudnorm=I=-20.0:LRA=7.0:TP=-2.0:print_format=json"
..\ffmpeg -i "02cover.mp4" -c:v copy %af% -y "02coverV2.mp4"


..\ffmpeg -i "02cover.mp4" -af "volumedetect" -vn -sn -dn  -f null -y NUL


set /p input2=音量調整:
set af=-af "volume=%input2%dB,volumedetect"
set af=-af "loudnorm=I=-20:TP=-7.0:LRA=20.0,volumedetect"
set af=-af "loudnorm,volumedetect"
set af=-af "loudnorm"


..\ffmpeg -i "02coverV2.mp4" -af "volumedetect" -vn -sn -dn  -f null -y NUL
-map_chapters -1 -map_metadata -1 

-af "loudnorm=print_format=json"


'I, i'
Set integrated loudness target. Range is -70.0 - -5.0. Default value is -24.0.

'LRA, lra'
Set loudness range target. Range is 1.0 - 20.0. Default value is 7.0.

'TP, tp'
Set maximum true peak. Range is -9.0 - +0.0. Default value is -2.0.

./ffmpeg -i /path/to/input.wav -af loudnorm=I=-16:TP=-1.5:LRA=11:measured_I=-27.2:measured_TP=-14.4:measured_LRA=0.1:measured_thresh=-37.7:offset=-0.7:linear=true:print_format=summary output.wav




..\ffmpeg -i "02cover.mp4" -af "volumedetect,loudnorm=print_format=json" -vn -sn -dn  -f null -y NUL
-af "loudnorm=print_format=summary"


..\ffmpeg -i "02cover.mp4" -af "volumedetect" -vn -sn -dn  -f null -y NUL
..\ffmpeg -i "02cover.mp4" -af "loudnorm=print_format=json" -vn -sn -dn  -f null -y NUL


del "02cover.mp4"
-c:a copy
 -bsf:v h264_mp4toannexb -f mpegts
 
 
-qp 45
-cq 45
-s 320x320
 -af "loudnorm=I=-20:TP=-2:LRA=5,volumedetect" 


-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect" 
-af "volume=+2dB,volumedetect" 

..\ffmpeg -i "cover.mp4" -af "volumedetect" -f null -y nul
-ac 1 音質很差?



..\ffmpeg -y -i "01x.mp3" -i "01x_loop5.mp4" -shortest -map 0:a -map 1:v   -r 120 -pix_fmt yuv420p -c:v h264_nvenc  "FFF.mp4"

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
?是起到加速作用的????， 1/60 = 0.0166667，因此?里???


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