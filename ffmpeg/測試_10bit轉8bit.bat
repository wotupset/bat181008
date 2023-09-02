echo off
chcp 65001


set /p input=檔案:
echo "%input%"

set tt=-ss 0:0:11.5 -t 0:0:19.5
set tt=-ss 0:0:4.5 -to 0:0:10.5
set tt0=
echo %tt%

ffmpeg %tt% -i %input%  -c:v h264_nvenc -y output_預設.mp4

ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -y output_yuv420p.mp4

ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv444p -y output_yuv444p.mp4



ffmpeg %tt% -i %input%  -c:v h264_nvenc -preset lossless -cq 0 -pix_fmt yuv420p -vf "setsar=1:1,eq=contrast=1.1:brightness=0.0:saturation=1.2" -y output_yuv420p_vf.mp4





pause
exit
scale=-1:-1:flags=bilinear,

ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -colorspace bt709 -y output_yuv420p_bt709.mp4
ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -vf "eq=contrast=1.25:brightness=0.0:saturation=1.25" -y output_yuv420p_vf.mp4
ffmpeg %tt% -i %input%  -c:v h264_nvenc -cq 18 -pix_fmt yuv420p -y output_yuv420p.mp4

-pix_fmt yuv420p -color_matrix bt709

contrast 對比
saturation 飽和 

contrast：對比度 (default: 1.0)
Set the contrast expression. The value must be a float value in range -2.0 to 2.0. The default value is “1”.
brightness：亮度 (default: 0.0)
Set the brightness expression. The value must be a float value in range -1.0 to 1.0. The default value is “0”.
saturation：飽和度 (default: 1.0)
Set the saturation expression. The value must be a float in range 0.0 to 3.0. The default value is “1”.


-vf "eq=contrast=1.1:brightness=0.0:saturation=1.2"
-vf "colorbalance=rs=0.1:gs=0.1:bs=0.1"

-vf "scale=in_range=full:out_range=tv:flags=full_chroma_inp+full_chroma_int"




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

