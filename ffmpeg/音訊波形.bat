ffmpeg -i _output_a_210914_163535_4635_.mp4 -filter_complex "compand,showwavespic=s=640x120" -frames:v 1 -y output.png
pause
exit


-filter_complex "compand" 填滿空間

https://trac.ffmpeg.org/wiki/Waveform
http://underpop.online.fr/f/ffmpeg/help/showwavespic.htm.gz

