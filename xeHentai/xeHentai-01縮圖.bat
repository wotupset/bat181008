echo off
chcp 65001


:top


set /p poi=網址:
echo %poi%


start "" "xeHentai-2.0.2.3.exe" %poi%


goto top



pause
exit


del /f /q *.txt



start "" "xeHentai-2.0.1.4.exe" %poi% -t 2 -o -s 1

-u 帳號 -k 密碼