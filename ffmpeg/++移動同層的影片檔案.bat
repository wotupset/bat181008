echo off
chcp 65001

echo %date%
echo %time%


set date1=%date:~3,20%%
set vardate=%date1:~2,2%%date1:~5,2%%date1:~8,2%
set vartime1=%time:~0,2%
if /i %vartime1% LSS 10 (set vartime1=0%time:~1,1%)
set vartime=%vartime1%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%




set FFF=webm
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/

set FFF=mp4
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/

set FFF=mkv
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/


exit
pause
exit




set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%





copy *.webm +,,
mkdir %nnn%
move *.webm ./%nnn%/





copy *.webm +,,
xcopy *.webm .\%nnn%\*.webm
del *.webm


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
