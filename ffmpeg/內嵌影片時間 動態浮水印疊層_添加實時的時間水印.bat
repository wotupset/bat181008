
ffmpeg -y -i "_output_a_210804_134441_3034_.mp4" -vf "drawtext= fontfile=111.ttf:  text='%ddd%': x=10:y=10: fontsize=50: fontcolor=white: box=1:boxcolor=black@1:  timecode='00\:00\:00\:000': rate=30: " output.mp4

exit

rate要跟原影片相同 不然會有誤差
111.tff是字型檔 consolas