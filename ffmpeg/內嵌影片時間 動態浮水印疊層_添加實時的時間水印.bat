
ffmpeg -y -i "01.mp4" -vf "drawtext= fontfile=111.ttf:  text='%ddd%': x=10:y=10: fontsize=100: fontcolor=white: box=1:boxcolor=black:  timecode='00\:00\:00\:000': rate=25: " -r 25 output.mp4

exit

rate要跟原影片相同 不然會有誤差
111.tff是字型檔 consolas