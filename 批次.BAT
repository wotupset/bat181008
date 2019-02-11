@echo off

echo %date%_%time%

set vcoodate=%date:~2,2%%date:~5,2%%date:~8,2%
set vcootime=%time:~0,2%

if /i %vcootime% LSS 10 (set vcootime=0%time:~1,1%)
set vcootime=%vcootime%%time:~3,2%%time:~6,2%

echo %vcoodate%_%vcootime%

echo %RANDOM%
echo %RANDOM%
echo %RANDOM%

set parameter01=-y 
set parameter02=-crf 20 -b:v 1000K -vf scale=640:640:force_original_aspect_ratio=decrease -metadata title="不能只有我看到"

echo %parameter01%
echo %parameter02%

set /a cc=0

for %%a in (*.mp4) do (

set /a cc=cc+1
echo %%a
ffmpeg %parameter01% -i "%%a" %parameter02% "_%vcoodate%_%vcootime%_%%a.webm"

)

echo %cc%

CMD


-crf 30 -b:v 0
ffmpeg %parameter01% -i "%%a" %parameter02% "%vcoodate%_%vcootime%_%%a.webm"
