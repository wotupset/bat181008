set /p input=ÀÉ®×:

echo %date%_%time%


ffmpeg -y -i %input% -vf "palettegen" palette.png
ffmpeg -y -i %input% -i palette.png  -filter_complex "fps=25,paletteuse" -loop 0 "_output.gif"



pause
exit


-loop 0
-1 no loop (plays once)
0 infinite loop (default)
1 loop once (plays 2 times)
2 loop twice (plays 3 times)



set input=_output_a_201003_181723_17922_.mp4




-vf "scale=400:-1:flags=lanczos,palettegen"
-filter_complex "fps=15,scale=400:-1:flags=lanczos,paletteuse"


ffmpeg -y -i "_output_aa.mp4" -vf "scale=-1:-1:flags=lanczos,palettegen" palette.png
ffmpeg -y -i "_output_aa.mp4" -i palette.png  -filter_complex "scale=-1:-1:flags=lanczos,paletteuse" output.gif


-r 2  -b:v 100k 
ffmpeg -y -i "01.mp4" -i palette.png  -filter_complex "fps=2,scale=-1:-1:flags=lanczos[x];[x][1:v]paletteuse" output.gif
