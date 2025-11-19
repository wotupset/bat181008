..\ffmpeg -i "01.mp3" -filter_complex "showwavespic=s=1000x200" -frames:v 1 -y output.png
..\ffmpeg -i "01.mp3" -af "volumedetect" -f null -y nul
pause
exit


-filter_complex "compand" 填滿空間

https://trac.ffmpeg.org/wiki/Waveform
http://underpop.online.fr/f/ffmpeg/help/showwavespic.htm.gz

