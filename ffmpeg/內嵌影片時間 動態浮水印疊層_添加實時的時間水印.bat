
ffmpeg -ss 0:0:0.0 -to 0:0:10.0 -i "01.mp4" -vf "drawtext= fontfile=111.ttf:  text='%ddd%': x=10:y=10: fontsize=50: fontcolor=white: box=1:boxcolor=black@0.5:  timecode='00\:00\:00\:000': rate=25: " -y output.mp4

exit

rate要跟原影片相同 不然會有誤差
111.tff是字型檔 consolas