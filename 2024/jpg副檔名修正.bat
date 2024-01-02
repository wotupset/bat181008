echo off
chcp 65001

echo %date%
echo %time%

set date1=%date:~3,20%%
set vardate=%date1:~2,2%%date1:~5,2%%date1:~8,2%
set vartime1=%time:~0,2%
if /i %vartime1% LSS 10 (set vartime1=0%time:~1,1%)
set vartime=%vartime1%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_webp
echo %nnn%


set FFF=webp
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/


ren *.jfif *.jpg
ren *.jpeg *.jpg
ren *.jpe *.jpg
ren *.jpg_large *.jpg

