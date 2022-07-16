

ffmpeg -i 01.webm -i 01.png -filter_complex "overlay=320:270"  -c:v h264_nvenc  -cq 10 -y 浮水印.mp4



pause
exit

文字浮水印
ffmpeg -i 01.mp4 -vf "drawtext=fontsize=100:fontfile=111.ttf:text='hello world ':x=20:y=20:fontcolor=white" -y waterfont.mp4
ffmpeg -i 01.mp4 -vf "drawtext=fontsize=100:fontfile=111.ttf:text='hello world ':x=500:y=20:fontcolor=white" -y waterfont.mp4



加上圖片logo
ffmpeg -i 01.mp4 -i 01.png -filter_complex "overlay=500:500" -y FFF.mp4
去除logo
ffmpeg -i FFF.mp4 -vf delogo=x=500:y=500:w=400:h=100 -y 123.mp4



左上 x300 y100
ffmpeg -i 01.mp4 -i 01.png -filter_complex "overlay=300:100" -c:a copy output.mp4


置中
ffmpeg -i 01.mp4 -i 01.png -filter_complex "overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -c:a copy output.mp4



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
