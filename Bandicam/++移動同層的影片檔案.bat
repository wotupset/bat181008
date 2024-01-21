echo off
chcp 65001

echo %date%
echo %time%

set date1=%date:~3,20%%
set vardate=%date1:~2,2%%date1:~5,2%%date1:~8,2%
set vartime1=%time:~0,2%
if /i %vartime1% LSS 10 (set vartime1=0%time:~1,1%)
set vartime=%vartime1%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_mp4
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

set FFF=avi
copy *.%FFF% +,,
mkdir %nnn%
move *.%FFF% ./%nnn%/





exit
pause
exit



set date1=%date:~2,2%%
echo %date1%

pause

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%




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
copy .\%nnn%\*.mp4 +..


创建时间：该文件在本载体本地址上创建的时间
修改时间：在属性中保存的最后一次修改的时间
访问时间：在属性中保存的最后一次访问的时间


#修改時間，注意是連續兩個英文逗號
copy 檔名+,,

#修改時間和訪問時間，注意是連續兩個英文句號
copy 檔名+..


move *.mp4 .\%nnn%\*.mp4
del *.mp4

xcopy *.mp4 .\%nnn%\*.mp4
del *.mp4


