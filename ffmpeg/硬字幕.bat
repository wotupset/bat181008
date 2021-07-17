@echo off


set qqq03=-map_chapters -1 -map_metadata -1  -pix_fmt yuv420p  -ac 2  


ffmpeg -y  -i 01.mp4     -c:v h264_nvenc -cq 30  -vf "subtitles=01.ass"     %qqq03%  out.mp4



pause

exit
pause

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