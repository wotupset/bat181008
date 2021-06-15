@echo off
set CD=%~dp0
set /a "cc=1"
echo %cc%
set /a "cc=cc+1"
echo %cc%
set /a "cc=cc+1"
echo %cc%

dir /b >1.txt
echo "">2.txt

for /F %%x in (1.txt) do (

dir /ad %%x >nul 2>nul&&(
echo 
)||(
echo 檔案=%%x >>2.txt
)

dir /ad %%x >nul 2>nul&&(
echo 資料夾=%%x >>2.txt
dir /b "./%%x"
)||(
echo 
)

)

set string=%~dp0
echo %string%
echo %string:~0,-1%

pause

exit

rem dir /o:G /s /b >1.txt
rem tree /F >1.txt
rem set string=%cd%
rem %~dp0 →批次檔所在路徑，%cd% →目前工作路徑