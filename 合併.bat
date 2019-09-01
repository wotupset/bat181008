ffmpeg -y -f concat -i mylist.txt -c copy merge.mp4
pause
exit

ffmpeg -y -f concat -i mylist.txt -c copy output.mp4

ffmpeg -y -i mylist.txt  output.mp4
