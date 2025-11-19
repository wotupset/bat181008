echo off
chcp 65001
title 快crf

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set "rand=%RANDOM%"
set "rand=00000%RANDOM%"
set "rand=%rand:~-5%"

set nnn=%vardate%_%vartime%_%rand%
echo %nnn%




set ddd=%nnn%mp4
mkdir %ddd%

move *.webm ./%ddd%/
move *.mp4 ./%ddd%/
move *.m4a ./%ddd%/
move *.mp3 ./%ddd%/
move *.mkv ./%ddd%/
move *.ts ./%ddd%/



exit
pause
exit

set FFF=webm
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/





copy *.webm +,,
mkdir %nnn%
move *.webm ./%nnn%/


copy *.mp4 +,,
xcopy *.mp4 .\%nnn%\*.mp4
del *.mp4

copy *.webm +,,
xcopy *.webm .\%nnn%\*.webm
del *.webm

copy *.mkv +,,
xcopy *.mkv .\%nnn%\*.mkv
del *.mkv






xcopy *.mp4 .\%nnn%\*.mp4
del *.mp4
xcopy *.webm .\%nnn%\*.webm
del *.webm
xcopy *.mkv .\%nnn%\*.mkv
del *.mkv
xcopy *.jpg .\%nnn%\*.jpg
del *.jpg
xcopy *.png .\%nnn%\*.png
del *.png

xcopy *.ts .\%nnn%\*.ts
del *.ts
xcopy *.srt .\%nnn%\*.srt
del *.srt
xcopy *.ass .\%nnn%\*.ass
del *.ass






copy .\%nnn%\*.mp4 +,,

move *.mp4 .\%nnn%\*.mp4
del *.mp4

xcopy *.mp4 .\%nnn%\*.mp4
del *.mp4



11
