set vdate=%date:~2,2%%date:~5,2%%date:~8,2%
set vtime=%time:~0,2%
if /i %vtime% LSS 10 (set vtime=0%time:~1,1%)
set vtime=%vtime%%time:~3,2%%time:~6,2%

youtube-dl -f 94 -o %%(title)s_%%(id)s_%vdate%_%vtime%.%%(ext)s https://www.youtube.com/watch?v=OBj-tiftCZI

pause
exit