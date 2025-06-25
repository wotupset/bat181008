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



set tt=-ss 0:1:0.0 -to 0:1:30.0
set tt=-ss 0:8:44.0 -to 0:9:44.0
set tt=-ss 0:1:0.0 -to 0:2:0.0
set tt=



ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -s 1280x720 -pix_fmt yuv420p -sn -vf "subtitles=01.mkv:si=25:force_style='Bold=1,FontSize=50,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"

pause

exit
pause
-qp 20



外掛字幕
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -pix_fmt yuv420p -sn -vf "subtitles=01.ass" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -pix_fmt yuv420p -sn -vf "subtitles=01.ass" -y "硬字幕%nnn%.mp4"


魔穗風格mkv
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.mkv:si=2:force_style='Bold=1,FontSize=21,BorderStyle=1,FontName=Microsoft YaHei,OutlineColour=&H00800080,SecondaryColour=&H000000FF,PrimaryColour=&H00FFFFFF'" -y "硬字幕%nnn%.mp4"



魔穗風格test
ffmpeg -loop 1 -i "01.jpg" -t 10  -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.srt:force_style='Bold=1,FontSize=20,BorderStyle=1,FontName=Microsoft YaHei,OutlineColour=&H00800080,SecondaryColour=&H000000FF,PrimaryColour=&H00FFFFFF'" -y "硬字幕%nnn%.mp4"

巴哈風格test
ffmpeg -loop 1 -i "01.jpg" -t 10  -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.srt:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=0.2,Outline=0.5,FontName=Microsoft YaHei,Spacing=0.8,MarginV=11'" -y "硬字幕%nnn%.mp4"





簡單的 半透明陰影

ffmpeg -loop 1 -i "01.jpg" -t 10  -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.srt:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.mkv:si=24:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.mkv:si=24:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"

簡單的 字幕
ffmpeg -loop 1 -i "01.jpg" -t 10  -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.srt:force_style='Bold=1,FontSize=20,FontName=Microsoft YaHei'" -y "硬字幕%nnn%.mp4"



%tt% 一定要放在 輸入後面 不然會沒有字幕




ffmpeg -loop 1 -i "01.jpg" -t 10 -s 1280x720 -c:v h264_nvenc -pix_fmt yuv420p  -an -y "01x.mp4"


ffmpeg -loop 1 -i "01.jpg" -t 10  -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -sn -vf "subtitles=01.srt:force_style='Bold=1,FontSize=21,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"

ffmpeg  -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p  -sn -vf "subtitles=01.mkv:si=2:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"
ffmpeg  -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p  -sn -vf "subtitles=01.mkv:si=2:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"





-map 0:v:0 -map 0:a:0


ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=2" -y "硬字幕%nnn%.mp4"

ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=2:force_style='Bold=1,FontSize=20,BorderStyle=1,Shadow=1,FontName=Microsoft YaHei,BackColour=&H80000000'" -y "硬字幕%nnn%.mp4"



fontsdir=Dancing_Script.ttf


ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=2:force_style='Bold=1,FontSize=20,FontName=Microsoft YaHei'" -y "硬字幕%nnn%.mp4"




ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.ass" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=19" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=32:force_style='FontSize=24'" -y "硬字幕%nnn%.mp4"
ffmpeg -i "01.mkv" %tt% -c:v h264_nvenc -qp 20 -pix_fmt yuv420p -map 0:v:0 -map 0:a:0 -sn -vf "subtitles=01.mkv:si=32:force_style='FontName=Microsoft YaHei'" -y "硬字幕%nnn%.mp4"

-ss 0:16:00.0 -to 0:21:50.0
ffmpeg -i "01.mkv" -ss 0:18:45.0 -to 0:19:0.0 -c:v h264_nvenc -qp 20  -sn -vf "subtitles=01.mkv:si=0" -y "字幕.mp4"



ffmpeg -i "01.mkv" -ss 0:0:0.0 -to 0:4:43.0 -c:v h264_nvenc -qp 25  -sn -vf "subtitles=01.ass" -y "字幕.mp4"

ffmpeg -i "01.mkv" -ss 0:19:3.5 -to 0:19:21.8 -c:v h264_nvenc -qp 20 -sn -vf "ass=01.ass" -y "字幕.mp4"


ffmpeg -i "01.mkv" -ss 0:17:17.0 -to 0:18:29.0 -c:v h264_nvenc -qp 25  -sn -vf "subtitles=01.mkv:si=20" -y "字幕.mp4"

ffmpeg -i "01.mkv" -ss 0:18:59.5 -to 0:19:11.0 -c:v h264_nvenc -qp 25  -sn -vf "ass=01.ass" -y "字幕.mp4"




original_size='854x480'


set /p input=檔案:
si從0開始


ffmpeg   -i %input% -ss 0:1:45.0 -to 0:2:0.0 -c:v h264_nvenc -sn -vf "subtitles=01.mkv:si=9:force_style='FontSize=25'" -y 字幕.mkv


-c:v hevc_cuvid

//Nvidia CUVID HEVC decoder (codec hevc)
-c:v hevc_cuvid
-c:v h264_cuvid


ffmpeg   -i 01.mkv -ss 0:3:40.0 -to 0:3:50.0 -c:v h264_nvenc -filter_complex "[0:v][0:s]overlay[v]" -map "[v]" -map 0:a -sn -y 字幕.mkv 

ffmpeg   -i 01.mkv -ss 0:3:40.0 -to 0:3:50.0 -c:v h264_nvenc -sn -vf "subtitles=01.mkv:si=1:force_style='FontSize=30'" -y 字幕.mkv

ffmpeg   -i 01.mkv -ss 0:3:40.0 -to 0:3:50.0 -c:v h264_nvenc -sn -vf "subtitles=01.mkv:si=1" -y 字幕.mkv



ffmpeg   -i 01.mkv -ss 0:0:40.0 -to 0:0:50.0 -c:v h264_nvenc -sn -vf "subtitles=01.mkv" -y 字幕.mkv



set aaa=-vf "subtitles='sub.srt'"
set aaa=-vf "subtitles='sub.srt':force_style='FontName=Microsoft JhengHei,FontSize=30'"
%aaa%

ffmpeg  -i 01.mp4   %aaa% -c:v h264_nvenc -y  "out.mp4"


注意時間軸的時間


set aaa=-vf "subtitles='sub.srt':force_style='FontName=Microsoft JhengHei,FontSize=20'"
,PrimaryColour=&HAA00FF00

set aaa=-vf "subtitles='sub.srt':force_style='FontName=Microsoft JhengHei,FontSize=20,PrimaryColour=&HAA00FF00'"

 -c:v h264_nvenc -cq 30 -s 800x450  
-c:v h264_nvenc -cq 30
-ss 1:9:0.0 -to 1:15:30.0 

-ss 00:17:0.0 -to 00:18:0.0 
-map 0:v:0 -map 0:a:1  
-map 0:v:0 序列0(第一個輸入檔案) 輸入v=影像 index=0(第一軌)
-map 0:a:1 序列0(第一個輸入檔案) 輸入a=聲音 index=1(第二軌)
-map 0:s:1 序列0(第一個輸入檔案) 輸入s=字幕 index=1(第二軌)


-vf "subtitles=01.mkv"
-vf "subtitles=01.mkv:si=1"
 -c:v h264_nvenc -cq 30
-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1/1" 
https://crifan.github.io/media_process_ffmpeg/website/subtitle/embed/

