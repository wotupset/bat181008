echo off
chcp 65001

..\ffmpeg -i "01.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 01x.ts
..\ffmpeg -i "02.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 02x.ts


..\ffmpeg -i "concat:01x.ts|02x.ts" -c copy -bsf:v h264_mp4toannexb  -y 合併.mp4

del "01x.ts"
del "02x.ts"




pause
exit

del "01.mp4"
del "02.mp4"

..\ffmpeg -i "concat:01x.ts|02x.ts|03x.ts" -c copy -bsf:v h264_mp4toannexb  -y 合併.mp4

..\ffmpeg -i "03.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 03x.ts
del "03x.ts"

ffmpeg -i 01.mkv -i 02.mkv -i 03.mkv -i 04.mkv -filter_complex "concat=n=4:v=1:a=1"  -c:v h264_nvenc -cq 30  -s 1280x720  -y  %nnn%_merge.mp4


type nul > mylist.txt
echo file 'FFFx1.mp4' >> mylist.txt
echo file 'FFFx2.mp4' >> mylist.txt

ffmpeg -f concat -i mylist.txt -c:v h264_nvenc -cq 30 -y output.mp4





ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4 -i 04.mp4 -filter_complex "concat=n=4:v=1:a=1"  -c:v h264_nvenc -cq 30   -y  %nnn%_merge.mp4


-af "volume=+15dB,volumedetect"


ffmpeg -f concat -i mylist.txt  -c:v h264_nvenc -cq 30  -y output.mp4

mpeg1格式 支援快速合併
ffmpeg -i "concat:input1|input2" -codec copy output.mkv

-c:v copy

 -c:v h264_nvenc -cq 30 
set fff01=01
set fff02=02
set fff03=

ffmpeg -i %fff01%.mp4 -i %fff02%.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]"  -y  %nnn%_merge.mp4


ffmpeg -i 01.jpg -i 01.mp4  -filter_complex "[0:v] [1:v] concat=n=2:v=1 [v] " -map "[v]"  output.mp4


ffmpeg -i %fff01%.mp4 -i %fff02%.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" %nnn%_merge.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" merge.mp4
ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4


只有畫面
ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [1:v] concat=n=2:v=1 [v] " -map "[v]"  output.mp4


ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -y -f concat  -i mylist.txt  -c:v copy  merge.mp4




 -c:v copy 

ffmpeg -i concat:"intermediate1.mpg|intermediate2.mpg" -c copy intermediate_all.mpg


ffmpeg -y -f concat -i mylist.txt -c copy output.mp4

ffmpeg -y -i mylist.txt  output.mp4
