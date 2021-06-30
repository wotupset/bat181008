ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4








pause
exit


只有畫面
ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [1:v] concat=n=2:v=1 [v] " -map "[v]"  output.mp4


ffmpeg -i 01.mp4 -i 02.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] concat=n=2:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -i 01.mp4 -i 02.mp4 -i 03.mp4  -filter_complex "[0:v] [0:a] [1:v] [1:a] [2:v] [2:a] concat=n=3:v=1:a=1 [v] [a]" -map "[v]" -map "[a]" output.mp4

ffmpeg -y -f concat  -i mylist.txt  -c:v copy  merge.mp4




 -c:v copy 

ffmpeg -i concat:"intermediate1.mpg|intermediate2.mpg" -c copy intermediate_all.mpg


ffmpeg -y -f concat -i mylist.txt -c copy output.mp4

ffmpeg -y -i mylist.txt  output.mp4
