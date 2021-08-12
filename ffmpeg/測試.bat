xcopy *.mp4 .\123\*.mp4
del *.mp4

pause
exit




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

