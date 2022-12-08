echo off
chcp 65001

set /p input=檔案:


ffmpeg  -c:v h264_cuvid  -i %input% -ss 0:16:26.0 -to 0:17:57.0 -c:v h264_nvenc -sn -vf "subtitles=01.mkv:si=1:force_style='FontSize=25'" -y 字幕.mkv


pause

exit
pause
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

