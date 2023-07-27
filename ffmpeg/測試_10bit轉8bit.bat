echo off
chcp 65001


set /p input=檔案:
echo "%input%"

set tt=-ss 0:0:11.5 -t 0:0:19.5
set tt=-ss 0:0:30.0 -to 0:1:0.0
set tt=
echo %tt%

ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -y output01.mp4

ffmpeg %tt% -i %input% -vf "scale=in_range=full:out_range=tv:flags=full_chroma_inp+full_chroma_int" -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -y output02.mp4




pause

exit


ffmpeg -i input.mp4 -vf "scale=in_range=full:out_range=tv:flags=full_chroma_inp+full_chroma_int" -c:v h264_nvenc -pix_fmt yuv420p -crf 18 output.mp4

ffmpeg %tt% -i %input% -vf "scale=in_range=full:out_range=tv:flags=full_chroma_inp+full_chroma_int" -pix_fmt yuv420p -c:v libx264 -crf 18 output.mp4



ffmpeg -hwaccel cuda -threads 1 %tt% -i %input% -c:v h264_nvenc -qp 20 -y test%RANDOM%.mp4


ffmpeg -hwaccel cuda -threads 1 %tt% -i %input% -vf "transpose=1" -c:v h264_nvenc -qp 20 -y test%RANDOM%.mp4

-vf "transpose=0"
0 = 90° counter-clockwise and vertical flip (default) 逆時針+垂直翻轉
1 = 90° clockwise 順時針
2 = 90° counter-clockwise 逆時針
3 = 90° clockwise and vertical flip 順時針+垂直翻轉




:top

echo RAINBOW
color 6

pause
loop top




exit

