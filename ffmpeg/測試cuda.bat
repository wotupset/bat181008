echo off
chcp 65001

set /p input=檔案:
echo %input%




set tt=-ss 0:2:0.0 -to 0:2:45.0
set tt0=
echo %tt%


set time0=%date%_%time%

ffmpeg -hwaccel cuda -hwaccel_output_format cuda %tt% -i %input% -vf "scale_cuda=800:450,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test%RANDOM%.mp4

set time1=%date%_%time%


echo %time0%
echo %time1%

pause
exit


相同
8秒 GPU交給RAM 再上傳到GPU
ffmpeg -hwaccel cuda %tt% -i %input% -vf "format=nv12,hwupload_cuda,scale_cuda=1280:720:interp_algo=bilinear,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test%RANDOM%.mp4
5秒 直接在GPU處理
ffmpeg -hwaccel cuda -hwaccel_output_format cuda %tt% -i %input% -vf "scale_cuda=1280:720:interp_algo=bilinear,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test%RANDOM%.mp4


set vf=-vf "scale_cuda=800:450:interp_algo=bilinear,setsar=1/1" 
nearest 鋸齒明顯 檔案大
bilinear 檔案小
bicubic
lanczos 中等
https://ffmpeg.org/ffmpeg-filters.html#scale_005fcuda


set vf=-vf "scale=800:450:flags=bilinear,setsar=1/1" 
neighbor 鋸齒明顯 檔案大
bilinear 檔案小
bicubic
lanczos 中等
https://ffmpeg.org/ffmpeg-scaler.html

-vf "scale_cuda=1280:720" 

資料會放在GPU裡 格式=nv12
-hwaccel cuda -hwaccel_output_format cuda

cpu=27%
ffmpeg -hwaccel cuda -i %input% -vf "scale=1280:720" -c:v h264_nvenc -pix_fmt yuv420p  -y test.mp4
cpu=17%
ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i %input% -vf "scale_cuda=1280:720,hwdownload,format=nv12" -c:v h264_nvenc -pix_fmt yuv420p  -y test.mp4


-vf "scale_cuda=1280:720,setsar=1/1,hwdownload,format=nv12"
-vf "scale_cuda=1280:720:format=yuv420p,setsar=1/1,hwdownload,format=yuv420p"



ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i %input% -vf "scale_cuda=1280:720,hwdownload,format=nv12" -c:v libx264 -y test.mp4
ffmpeg -hwaccel cuda  -i %input%    -vf "scale=800:450,setsar=1/1"   -c:v h264_nvenc -pix_fmt yuv420p  -y test.mp4

-vf "hwdownload,hwupload"
scale=800:450,setsar=1/1
-hwaccel cuda -hwaccel_output_format cuda
ffmpeg  -i %input% -c:v h264_nvenc   -y output.mp4

set tt=-ss 0:15:0.0 -to 0:20:0.0
set tt0=
echo %tt%


 -f null -y NUL 

-vf "hwupload_cuda"

ffmpeg -hwaccel cuda -hwaccel_output_format cuda -i %input%  -c:v h264_nvenc   -y output.mp4


ffmpeg -i "$0" -map 0 -c copy "${0%%.*}".mkv
set /p input=檔案:
ffmpeg -i %input% -c:v mpeg4 -y "123.mkv" 


echo %date%
echo %time%

set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%





set /p input=檔案:
ffmpeg -loop 1 -i %input% -an -c:v libvpx -crf 16  -quality best -threads 4 -t 2 -r 1 -y "123.webm" 




-qmin 16 -qmax 16


set vf=-vf "scale=720:1280,setsar=1/1" 
set vf=-vf "scale=1280:720,setsar=1/1" 


ffmpeg -ss 0:0:0.0 -to 00:0:30.0  -i %input%   %vf%  -c:v h264_nvenc -qp 30  -y "720p30s.mp4"


ffmpeg -i %input% -c:v mpeg2video -y "test.mkv"

ffmpeg -i 01.mp4 -itsoffset -0.6 -i 01.mp4 -map 0:v -map 1:a -c:v copy -c:a copy -y  out.mp4
start ""  out.mp4



set tt=-ss 0:0:0.0 -to 0:0:13.0
ffmpeg %tt% -i "01.mp4"  -c:v h264_nvenc -cq 30  -y "FFFx1.mp4"

set tt=-ss 0:0:19.0 -to 0:0:37.0
ffmpeg %tt% -i "01.mp4"  -c:v h264_nvenc -cq 30  -y "FFFx2.mp4"


type nul > mylist.txt
echo file 'FFFx1.mp4' >> mylist.txt
echo file 'FFFx2.mp4' >> mylist.txt

ffmpeg -f concat -i mylist.txt -c:v h264_nvenc -cq 30 -y output.mp4


del "FFFx1.mp4"
del "FFFx2.mp4"








q=0-100 q越小越模糊
ffmpeg  -i %input%  -r 15 -s 800x450 -an -loop 5 -q:v 5 -y "FFFx1.webp"


-safe 0 
above is not required if the paths are relative.

ffmpeg -f concat -safe 0 -i mylist.txt -c copy output.mp4

ffmpeg -i concat:"FFFx1.mpg|FFFx2.mpg" -c copy -y "FFFx99.mpg"
ffmpeg -i "FFFx99.mpg" -y "FFF.mp4"

ffmpeg -i "01.mp4" -c:v copy -b:a 56K -y "01v2.mp4"


set tt=-ss 0:0:0.0 -to 0:0:5.0
set tt0=
echo %tt%
ffmpeg -i "01.mkv"  -map 0:v -map 0:a  -c:v copy -c:a copy  -y "01v2.mkv"


ffmpeg %tt% -i 01.mp4 -vf "scale=iw/8:ih/8,scale=8*iw:8*ih:flags=neighbor" -y "FFF.mp4"


ffmpeg -i "01.mp4"   -c:v libtheora -c:a libopus   -y "01.mkv"


ffmpeg -i "02.mp4"  -c:v libvpx-vp9  -cpu-used 4  -row-mt 1 -pix_fmt yuv420p    -y "test.webm"


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

