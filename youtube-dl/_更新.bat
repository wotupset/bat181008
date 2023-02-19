echo off
chcp 65001


echo ==yt-dlp==
yt-dlp.exe --update
yt-dlp.exe --version 

pause
exit


echo ==youtube-dl==
youtube-dl.exe --update
youtube-dl.exe --version 

youtube-dl.exe --help >> _help_youtube-dl.txt
yt-dlp.exe --help >> _help_yt-dlp.txt

pause
exit

youtube-dl.exe --version > _help_youtube-dl.txt
yt-dlp.exe --version > _help_yt-dlp.txt


youtube-dl.exe --help >> _help_youtube-dl.txt
yt-dlp.exe --help >> _help_yt-dlp.txt
