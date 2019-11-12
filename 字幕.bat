@echo off

ffmpeg -y  -i 01.mkv -ss 00:21:09.0 -to 00:21:44.0 -crf 20 -b:v 0k -preset veryfast -vf "subtitles=01.ass" out.mp4



pause

exit
pause



