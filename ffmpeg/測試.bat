ffmpeg -i "02.mp4"  -c:v libvpx-vp9  -cpu-used 4  -row-mt 1 -pix_fmt yuv420p    -y "test.webm"




pause
exit
-c:v libaom-av1



ffmpeg -i "02.mp4" -c:v h264_nvenc -cq  30  -pix_fmt yuv420p   -y "FFF.mp4"

ffmpeg -i "FFF.mp4"  -c:v libvpx  -cpu-used 4 -r 25 -ac 2   -row-mt 1 -pix_fmt yuv420p    -y "test.webm"


ffprobe -i 01.mkv -show_chapters

ffmpeg -ss 0:0:0.0 -to 0:0:10.0  -i "01.mp4" -vf "setsar=sar=16/9,setdar=dar=200/200" -y "test.mp4"




ffmpeg -i aa.mp3 -i bb.mp3 -filter_complex "amix=inputs=2"   -shortest output.mp3 



set /p input=檔案:


ffmpeg -y -ss 0:0:0.0 -to 0:0:1.0  -i "%input%" -r 30 -preset picture  -s 800:450 output.webp

pause
exit

[0:a]volume=0.8[a0];[1:a]volume=0.8[a1];


ffmpeg -i "01.wav"  -map 0:a  -y "01.mp3"
mp3轉檔 去除內建的封面圖片(附加資源)


-map_chapters -1 -map_metadata -1

ffmpeg -i "1626561639803.png" -f rawvideo -y mmm.mkv

ffmpeg -i "1626544532020.png" -f rawvideo  - | ffplay -i -
轉檔後直接撥放


ffplay -i "1626544532020.png" -f rawvideo


ffmpeg -i 01.mp4 -filter_complex "showwavespic=s=640x120" -frames:v 1 output.png
ffmpeg -i 01.mp4 -c:v libaom-av1 -crf 35 -b:v 1000k -usage realtime -cpu-used 8 -c:a libopus -f webm -y output.webm


-y output.mkv  

-c:a libopus -f webm -y output.webm


ffmpeg -hwaccel cuvid -c:v h264_cuvid -i input.mp4 -c:v h264_qsv -c:v h264_qsv -y output.mp4
使用獨立顯示卡的情況下 不能使用qsv (依賴CPU內建顯示卡)



-f mpegts output.ts


-c:v h264_qsv
-c:v hevc_qsv 
-c:v vp9_qsv      

-init_hw_device d3d11va=qsv:MFX_IMPL_hw_any -hwaccel qsv -filter_hw_device qsv


.\ffmpeg -y -i "01.mp3" -loop 1 -i "01.jpg" -shortest -map 0:a -map 1:v   -r 120 -c:v h264_nvenc   "FFF.mp4"
.\ffmpeg -y -i "FFF.mp4"  %qqq03%  -r 5 -c:v h264_nvenc  "output.mp4"
del "FFF.mp4"





ffmpeg -y -f lavfi -i anullsrc -t 1 "anullsrc.mp3"
ffmpeg -y -i "anullsrc.mp3" -loop 1 -i "01.jpg" -t 0.1 -map 0:a -map 1:v     "FFF.mp4"






pause
exit
-vf "scale=800:450"


-shortest
 -r 60
-vf "scale=800:450"
 -preset faster -tune stillimage
-loop 1



set ddd=%date:~0,10%
echo %ddd%

ffmpeg -y -i "_output_a_210804_134441_3034_.mp4" -vf "drawtext= fontfile=111.ttf:  text='%ddd%': x=10:y=10: fontsize=50: fontcolor=white: box=1:boxcolor=black@1:  timecode='00\:00\:00\:000': rate=30: " output.mp4



cmd

ffmpeg -i "_output_a_210804_134441_3034_.mp4" -vf "drawtext=fontfile=111.ttf: text='%DATE%':timecode='0\:0\:0\:0': r=30: x=10:y=10: fontcolor=white: fontsize=28: box=1: boxcolor=0x00000000@1" -y output.mp4


cmd






pause
exit


ffprobe -select_streams v -show_frames -show_entries frame=pkt_pts_time,pict_type "_output_a_210804_134441_3034_.mp4"

pause
exit


enable='between(t,5,10)': 出現時間

pause
text='%ddd%_'

text='Wed 29\.06\.2016 / '


ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4



ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4



ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4





echo file '_output_.mp4' >mylist.txt



ffmpeg -i _output_a_201128_105112_2037_.mp4 -r 20 out%%03d.jpg

 -b:v 5M -maxrate 2M -bufsize 2M 


-f rawvideo -pix_fmt yuv420p -s:v 1920x1080 


  -c:v libx264  -crf 15 -b:v 0k -preset fast  "%output%"



-pix_fmt yuv420p

-ss 00:17:47.2 -to 00:17:50.3
 -c:v h264_nvenc -profile:v main -qp 30 
 -c:v libx264 -crf 15 -b:v 0k -preset fast
-c:v h264_nvenc
-c:v libx264
-c:v libx264rgb 檔案變很大
-noaccurate_seek
-accurate_seek

-hwaccel dxva2
-hwaccel qsv -c:v h264_qsv

-movflags faststart
-movflags faststart 邊下載邊撥放
-qp 相當等於 -crf 但檔案很大
-cq 20 
-ac 2 雙聲道
-profile:v baseline 無交錯
-profile:v main

-c:v h264_nvenc -profile:v baseline -preset fast 
-crf 20 -b:v 0k -preset fast

-sn 關掉字幕
-r 24
-c:v libx265
-c:v h264_nvenc
-c:v h264_nvenc  -b:v 1000k
-c:v hevc_nvenc
-crf 20
-c:v libvpx-vp9
-map_chapters -1 -map_metadata -1


-ss 00:12:0.0 -to 00:12:10.0


-preset veryfast  

 -preset fast -crf 0 -b:v 0 

-preset ultrafast

-crf 0 -preset veryfast 
-preset ultrafast -crf 0 -b:v 0 
-tune fastdecode
-tune animation


-vf "scale=640:-2:force_original_aspect_ratio=decrease:flags=lanczos" 

-ss 00:02:17.8 -to 00:04:14.8

-vf "scale=-2:360:force_original_aspect_ratio=decrease:flags=lanczos"
-vf "scale=640:640:force_original_aspect_ratio=decrease"

set qqq01=01.mp4


-t 00:0:21.0

-ss 00:00:00.0 -to 00:00:41.6

-preset veryfast -tune fastdecode

set ppp02= -ss 00:00:05.5 -t 00:00:8.5
set ppp03= -map 0:0 -map 0:2

