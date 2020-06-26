set /p input=ÀÉ®×:

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

set nnn=%vcoodate%_%vcootime%_%RANDOM%
echo %nnn%

set output=_output_vp9_¤ùÀY¦±.webm
set qqq03=-map_chapters -1 -map_metadata -1 -pix_fmt yuv420p  -ac 2

ffmpeg -y -i %input% %qqq03% -c:v libvpx-vp9  -deadline realtime  -cpu-used 5  -crf 46  -vf "scale=400:400:force_original_aspect_ratio=decrease"  %output%


for %%F in ( %output% ) do @echo %%~zF %%F


start ""  %output%





pause



exit 
pause

-b:a 96K