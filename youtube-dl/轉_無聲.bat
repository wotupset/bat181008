chcp 65001
echo off
set /p input=檔案:

ffmpeg -i %input%  -c:v copy -an   -y "_無聲.mkv"




pause
exit


-map 0:a

set input=_output_a_201003_181723_17922_.mp4




-vf "scale=400:-1:flags=lanczos,palettegen"
-filter_complex "fps=15,scale=400:-1:flags=lanczos,paletteuse"


ffmpeg -y -i "_output_aa.mp4" -vf "scale=-1:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "_output_aa.mp4" -i palette.png  -filter_complex "scale=-1:-1:flags=lanczos,paletteuse" output.gif


-r 2  -b:v 100k 
ffmpeg -y -i "01.mp4" -i palette.png  -filter_complex "fps=2,scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
