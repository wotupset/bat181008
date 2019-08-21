@echo off

ffmpeg -y  -i aa.mkv -ss 00:19:38.0 -to 00:26:26.0 -crf 20 -b:v 0k -preset veryfast -vf "subtitles=aa.ass" out.mp4



pause

exit
pause



