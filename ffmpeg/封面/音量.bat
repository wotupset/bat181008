
..\ffmpeg -i "cover.mp4" -af "volumedetect" -f null -y nul

pause

..\ffmpeg -i "cover.mp4" -af "volume=30.0"  -y "cover_v2.mp4"

..\ffmpeg -i "cover_v2.mp4" -af "volumedetect" -f null -y nul


pause
exit

-af "loudnorm=i=-20,volume=10dB" 

..\ffmpeg -i "01.mp3" -filter_complex "showwavespic=s=1000x200" -frames:v 1 -y output.png
-filter_complex "compand" ¶ñº¡ªÅ¶¡

https://trac.ffmpeg.org/wiki/Waveform
http://underpop.online.fr/f/ffmpeg/help/showwavespic.htm.gz

