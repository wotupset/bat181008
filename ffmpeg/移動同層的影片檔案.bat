

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_640p_%RANDOM%
echo %nnn%





xcopy *.mp4 .\%nnn%\*.mp4
del *.mp4
xcopy *.webm .\%nnn%\*.webm
del *.webm



exit
pause
exit

11
