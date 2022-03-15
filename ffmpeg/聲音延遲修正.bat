ffmpeg -i 01.mp4 -itsoffset -0.6 -i 01.mp4 -map 0:v -map 1:a -c:v copy -c:a copy -y  out.mp4


exit
pause

