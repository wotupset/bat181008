@echo off 

echo �ɶ��t > �ɶ��t.txt
echo %date%_%time% >> �ɶ��t.txt




..\ffmpeg -y -loop 1 -i "01.webp" -t 10    -vf "setsar=1:1" -c:v h264_nvenc -preset fast -an  "01x.mp4"
..\ffmpeg -y -stream_loop 5 -i "01x.mp4" -c copy "01x_loop.mp4"
..\ffmpeg -y -stream_loop 9 -i "01x_loop.mp4" -c copy "01x_loop5.mp4"
del "01x1.jpg"
del "01x.mp4"
del "01x_loop.mp4"


..\ffmpeg -y  -ss 0:4:15.0 -to 0:7:15.0 -i "01.mp3"  -f mp3  "01x.mp3"



36



..\ffmpeg -y -i "01x.mp3" -i "01x_loop5.mp4" -shortest -map 0:a -map 1:v    -pix_fmt yuv420p -c:v h264_nvenc -qp 45 -preset fast -r 120  "FFF.mp4"
..\ffmpeg -y -i "FFF.mp4"  %qqq03% -s 400x400   -r 5   -map_chapters -1 -map_metadata -1   -c:v h264_nvenc -qp 45 -preset fast  "cover.mp4"

del "01x.mp3"
del "01x_loop5.mp4"
del "FFF.mp4"








echo %date%_%time% >> �ɶ��t.txt









pause
exit
-s 320x320
 -af "loudnorm=I=-20:TP=-2:LRA=5,volumedetect" 


-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect" 
-af "volume=+2dB,volumedetect" 

..\ffmpeg -i "cover.mp4" -af "volumedetect" -f null -y nul
-ac 1 ����ܮt?



..\ffmpeg -y -i "01x.mp3" -i "01x_loop5.mp4" -shortest -map 0:a -map 1:v   -r 120 -pix_fmt yuv420p -c:v h264_nvenc  "FFF.mp4"

-qp 30 
-qp 35

-cq 30
-cq 35
-preset p1 �������Ofastest

�Ϥ��Y��
..\ffmpeg -y -i "01.webp" -vf "scale=800:-2" "01x.jpg" 
..\ffmpeg -y -loop 1 -i "01x.jpg" -t 10   -vf "setsar=1:1" -c:v h264_nvenc   -an  "01x.mp4"


 -af "loudnorm=i=-20" 

-ss 00:8:30.0 -to 0:10:30.0
-preset fast
-preset p2  ��fast��֪�faster
 -map_chapters -1 -map_metadata -1 

-map 0:a
-dn disable data
-pix_fmt yuv420p -preset fast 

-tune stillimage

-qp 30
-cq 30

-ss 00:7:45.0 -to 0:9:45.0 a

-ss 00:6:55.0 -to 0:8:55.0 c

�V�Ƥ����� �ʭ��v���᭱�|���ťծɶ�
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
?�O�_��[�t�@�Ϊ�????�A 1/60 = 0.0166667�A�]��?��???


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



�A��@�� �O�קK����app�L�kŪ���X�᪺֫mp4

-ss 00:4:32.0 -to 00:8:52.0

-t 10
-shortest

-map 0:a -map 1:v ���Ĥ@���ɮת����y ���ĤG���ɮת��v��
-f lavfi -i anullsrc  �����ťխ��y
-vf scale=320:240

-vf scale=iw*2:ih   iw =��J�e�סAih =��J���� 