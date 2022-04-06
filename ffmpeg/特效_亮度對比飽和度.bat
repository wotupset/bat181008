echo
chcp 65001


set /p input=檔案:





ffmpeg  -i %input% -vf "eq=contrast=1.2:brightness=0.2:saturation=1.2"  -c:v h264_nvenc  -cq 30 -pix_fmt yuv420p -y 亮度對比飽和度.mp4


pause
exit

 -c:v h264_nvenc  -qp 35


ffmpeg  -i %input%   -vf "scale=iw/2:ih/2,scale=2*iw:2*ih:flags=neighbor" -c:v h264_nvenc -cq 30 -y "FFF.mp4"

contrast：對比度 (default: 1.0)
Set the contrast expression. The value must be a float value in range -2.0 to 2.0. The default value is “1”.
brightness：亮度 (default: 0.0)
Set the brightness expression. The value must be a float value in range -1.0 to 1.0. The default value is “0”.
saturation：飽和度 (default: 1.0)
Set the saturation expression. The value must be a float in range 0.0 to 3.0. The default value is “1”.