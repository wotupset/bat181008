@echo off



:top


set /p poi=youtube���}:
echo %poi%


set qq01=-o yt-%%(title)s-%%(id)s.%%(ext)s
echo %qq01%





youtube-dl %qq01% --limit-rate 2M  -f bestvideo[ext=mp4]+bestaudio[ext=m4a]   %poi%



goto top



pause
exit
--cookies=cookiejar.txt

���Ŭ�� ���̵M�n�U������v��
youtube-dl --postprocessor-args "-ss 0:9:0 -to 0:9:10" https://www.youtube.com/watch?v=OCmqTRHOLNw



youtube-dl -f bestvideo[ext=mp4],bestaudio[ext=m4a]   %poi%




-o [%(id)s]_%(title)s.%(ext)s
youtube-dl -f best -o [%(id)s]_%(title)s.%(ext)s  https://www.youtube.com/watch?v=_dXJK2acUos
