echo 時間差 > 時間差.txt
echo %date%_%time% >> 時間差.txt



IF %time:~6,1% == 0 (
set  time_ss=%time:~7,1%
) ELSE (
set  time_ss=%time:~6,2%
) 

IF %time:~3,1% == 0 (
set time_ii=%time:~4,1%
) ELSE (
set time_ii=%time:~3,2%
) 

IF "%time:~0,1%" == " " (
set time_hh=%time:~1,1%
) ELSE (
set time_hh=%time:~0,2%
) 

set /a time_hms1 = %time_hh% *60 *60 + %time_ii% *60 + %time_ss%
echo 時間1=%time_hms1%







timeout /t 3





echo %date%_%time% >> 時間差.txt

IF %time:~6,1% == 0 (
set  time_ss=%time:~7,1%
) ELSE (
set  time_ss=%time:~6,2%
) 

IF %time:~3,1% == 0 (
set time_ii=%time:~4,1%
) ELSE (
set time_ii=%time:~3,2%
) 

IF "%time:~0,1%" == " " (
set time_hh=%time:~1,1%
) ELSE (
set time_hh=%time:~0,2%
) 

set /a time_hms2 = %time_hh% *60 *60 + %time_ii% *60 + %time_ss%
echo 時間2=%time_hms2%
set /a time_hms3=%time_hms2% - %time_hms1%
echo 耗時=%time_hms3%



pause
exit

%tmp:x=y%
%time::=%  輸出=163058.68

echo %date%
echo %time%


set vardate=%date:~5,2%%date:~8,2%%date:~11,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%_640p
echo %nnn%

