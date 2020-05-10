



ffmpeg -y  -i "sd.mp4" -i "hd.mp4" -map 0:a -map 1:v -ss 00:10:0.0 -to 00:10:42.0 -c:v h264_nvenc  -cq 30   "HD1080.mp4"


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