@echo off 

echo %date%
echo %time% 


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
echo ®É¶¡1=%time_hms1%


pause
exit

