set /p input=檔案:


ffmpeg -y   -i "%input%" -r 25  -loop 0 -s 800:450  -preset picture  "_output.webp"

pause
exit
-loop 1 循環一次
-loop 0 無限循環


-vf "fps=10,scale=720:-1:flags=lanczos" \
-ss 0:0:0.0 -to 0:0:1.0

set input=_output_a_201003_181723_17922_.mp4




-vf "scale=400:-1:flags=lanczos,palettegen"
-filter_complex "fps=15,scale=400:-1:flags=lanczos,paletteuse"


ffmpeg -y -i "_output_aa.mp4" -vf "scale=-1:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "_output_aa.mp4" -i palette.png  -filter_complex "scale=-1:-1:flags=lanczos,paletteuse" output.gif


-r 2  -b:v 100k 
ffmpeg -y -i "01.mp4" -i palette.png  -filter_complex "fps=2,scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
