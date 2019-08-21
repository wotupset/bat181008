set input=_output_a_190812_065752_10838_.mp4


ffmpeg -y -i "%input%" -vf "scale=400:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "%input%" -i palette.png  -filter_complex "fps=15,scale=400:-1:flags=lanczos,paletteuse" output.gif

pause
exit

ffmpeg -y -i "_output_aa.mp4" -vf "scale=-1:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "_output_aa.mp4" -i palette.png  -filter_complex "scale=-1:-1:flags=lanczos,paletteuse" output.gif


-r 2  -b:v 100k 
ffmpeg -y -i "01.mp4" -i palette.png  -filter_complex "fps=2,scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
