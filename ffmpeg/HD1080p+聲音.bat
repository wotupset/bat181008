



ffmpeg -y  -i "videoplayback.m4a" -i "videoplayback.mp4" -map 0:a -map 1:v  -c:v h264_nvenc  -cq 25   "youtube.mp4"


pause
exit

-qp 30
-cq 30



-c:v libx264 -preset fast -crf 30 


-t 10
-shortest

-map 0:a -map 1:v 取第一個檔案的音軌 取第二個檔案的影像
-f lavfi -i anullsrc  虛擬空白音軌
-vf scale=320:240

-vf scale=iw*2:ih   iw =輸入寬度，ih =輸入高度 