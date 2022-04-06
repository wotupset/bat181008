chcp 65001
@echo off 


..\ffmpeg -loop 1 -i "01.png" -f lavfi -i anullsrc -t 0.04    -c:v h264_nvenc -cq 30 -pix_fmt yuv420p  -y  "01x.mp4"


type nul > mylist.txt
echo file '01x.mp4' >> mylist.txt
echo file '01.mp4' >> mylist.txt

..\ffmpeg -f concat -i mylist.txt -c:v h264_nvenc -cq 30 -pix_fmt yuv420p -y "封面圖片.mp4"






pause
exit

