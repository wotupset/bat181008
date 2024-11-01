echo off
chcp 65001
set /p input=檔案:



ffmpeg -ss 0:0:57.0 -to 0:1:0.0 -i %input%  -vf reverse -af areverse  -y output.mp4

 



cmd
exit

ffmpeg -i %input%  -vf "trim=start_frame=100:end_frame=200,setpts=PTS-STARTPTS" -an -y output.mp4


FFmpeg  -ss 0:10:48.6 -to 0:10:54.1  -i %input%   out.mp4

yt-dlp.exe -vU

yt-dlp.exe --get-url https://x.com/nie_osoremi/status/1793226197159252213

ffmpeg -i 01.webm -i 02.mp4 -map 0:a -map 1:v -c:v copy -c:a copy -y 03.mkv

set /p input=檔案:
echo %input%

