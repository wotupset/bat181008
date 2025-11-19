echo off
chcp 65001
set /p input=檔案:


ffmpeg -i %input% -c:v h264_nvenc -vf "boxblur"  -y boxblur.mp4


cmd
exit

模糊
orig =1870
gblur =1689
avgblur =1406
boxblur =977
smartblur ??

降噪
chromanr??
fftdnoiz??


ffmpeg -i %input% -c:v h264_nvenc -vf "gblur" -y gblur.mp4
ffmpeg -i %input% -c:v h264_nvenc -vf "gblur=sigma=5" -y gblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "boxblur"  -y boxblur.mp4
ffmpeg -i %input% -c:v h264_nvenc -vf "boxblur=5"  -y boxblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "avgblur"  -y avgblur.mp4

ffmpeg -i %input% -c:v h264_nvenc -vf "minterpolate=fps=60" output.60fps.mp4


ffmpeg.exe -ss 0:0:0.0 -to 0:0:5.0 -i 01.mp4 -c:v h264_nvenc -y video.01.mp4
ffmpeg.exe -ss 0:0:0.0 -to 0:0:5.0 -i 01.mp4 -c:v h264_nvenc -y video.02.mp4




