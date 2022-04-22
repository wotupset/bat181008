chcp 65001
echo off




ffmpeg -ss 0:0:0.0 -to 0:0:1.0    -i 01.mp4   -vframes 3  %%03d.jpg




pause

exit
pause
set /p input=檔案:
ffmpeg -ss 0:0:0.0 -to 0:0:1.0    -i %input%    -vframes 1   ./_img/%%03d.jpg
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

