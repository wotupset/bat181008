@echo off

echo %date%_%time% > 時間差.txt

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
