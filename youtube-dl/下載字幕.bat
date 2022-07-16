echo off
chcp 65001


set /p poi=youtube網址:
echo %poi%


youtube-dl --write-sub   --skip-download %poi%



pause
exit

youtube-dl --write-sub --sub-lang zh-Hant  --convert-subs srt --skip-download https://www.youtube.com/watch?v=vsCO7C416bs


