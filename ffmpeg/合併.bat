echo %date%_%time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%

if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set nnn=%vardate%_%vartime%_%RANDOM%
echo %nnn%



set fff01=_output_a_210729_171737_23047_
set fff02=_output_a_210729_171828_23213_
set fff03=



ffmpeg -i 01.jpg -i 01.mp4  -filter_complex "[0:v] [1:v] concat=n=2:v=1 [v] " -map "[v]"  output.mp4









pause
exit

ffmpeg -i %fff01%.mp4 -i %fff02%.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" %nnn%_merge.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" merge.mp4
ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4


只有畫面
ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [1:v] concat=n=2:v=1 [v] " -map "[v]"  output.mp4


ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -y -f concat  -i mylist.txt  -c:v copy  merge.mp4




 -c:v copy 

ffmpeg -i concat:"intermediate1.mpg|intermediate2.mpg" -c copy intermediate_all.mpg


ffmpeg -y -f concat -i mylist.txt -c copy output.mp4

ffmpeg -y -i mylist.txt  output.mp4
