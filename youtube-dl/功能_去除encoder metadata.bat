echo off
chcp 65001


echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%

set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set /p input=檔案:

ffmpeg -i %input% -c copy -bsf:v h264_mp4toannexb -f mpegts -y FFF.ts
ffmpeg -i "concat:FFF.ts" -c copy -bsf:a aac_adtstoasc -y 去除encoder_metadata.mp4



pause
exit
-map_metadata -1
-map_metadata:g -1
-map_metadata:s -1

-metadata:s handler_name="handler_name"
-metadata:s handler_name="handler_name"


ffmpeg -i %input% -c:v h264_nvenc -filter_complex "concat=n=1:v=1:a=1" -metadata:s title="標題" -y 連接合併%nnn%.mp4





ffmpeg -i %input% -c copy -bsf:v h264_mp4toannexb -f mpegts -y FFF.ts
ffmpeg -i "concat:FFF.ts" -c copy -bsf:a aac_adtstoasc -y 去除encoder_metadata.mp4



ffmpeg -i %input% -c:v h264_nvenc  -y "FFF.mp4"  

ffmpeg -i 01.mp4 -c:v h264_nvenc -cq 10 -filter_complex "concat=n=1:v=1:a=1" -y 連接合併.mp4
ok



ffmpeg -i 01.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts 01.ts
ffmpeg -i 02.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts 02.ts
ffmpeg -i "concat:01.ts|02.ts" -c copy -bsf:a aac_adtstoasc 連接無損.mp4
去掉了video encdoer metedata

ffmpeg -i 01.mp4 -i 02.mp4 -c:v h264_nvenc -cq 10 -filter_complex "concat=n=2:v=1:a=1" -y 連接合併.mp4
去掉了video encdoer metedata

ffmpeg -i 01.mp4 -i 02.mp4 -c:v h264_nvenc -cq 10 -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map [v] -map [a] -y 連接合併.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -filter_complex "concat=n=2:v=1:a=1[v][a];[v]scale=400:400[v2]" -map "[v2]" -map "[a]" -y 連接合併.mp4


ffmpeg -ss 0:17:0.0 -to 0:17:20.0 -i %input% -c:v h264_nvenc -cq 10 -y 01x.mp4
ffmpeg -ss 0:17:45.2 -to 0:18:6.0 -i %input% -c:v h264_nvenc -cq 10 -y 02x.mp4
ffmpeg -i 01x.mp4 -i 02x.mp4 -c:v h264_nvenc -cq 10 -filter_complex "concat=n=2:v=1:a=1" -y 連接合併.mp4









ffmpeg -ss 0:0:0.0 -to 0:0:20.0 -i %input%  -y 01x.mp4
ffmpeg -ss 0:3:10.0 -to 0:3:45.0 -i %input%  -y 02x.mp4
ffmpeg -i 01x.mp4 -i 02x.mp4  -filter_complex "concat=n=2:v=1:a=1" -y 連接合併.mp4



ffmpeg -ss 0:0:0.0 -to 0:0:20.0 -i %input%  -y 01x.mp4
ffmpeg -ss 0:3:10.0 -to 0:3:45.0 -i %input%  -y 02x.mp4
ffmpeg -i 01x.mp4 -i 02x.mp4  -filter_complex "concat=n=2:v=1:a=1" -y 連接合併.mp4
ffmpeg -i 01x.mp4 -i 02x.mp4  -filter_complex "[0:v][0:a][1:v][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]"  -y 合併.mp4



ffmpeg -f concat -i mylist.txt -c:v copy -y 合併.mp4


ffmpeg -i "01.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 01x.ts
ffmpeg -i "02.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 02x.ts
ffmpeg -i "concat:01x.ts|02x.ts" -c copy -bsf:v h264_mp4toannexb  -y 合併.mp4


del 01x.ts
del 02x.ts



ffmpeg -i "concat:01x.ts|02x.ts|03x.ts" -c copy -bsf:v h264_mp4toannexb  -y 合併.mp4
ffmpeg -i "03.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y 03x.ts

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


echo %date%_%time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%






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
