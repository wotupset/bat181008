


set /p input=檔案:
echo %date%_%time%



set af=-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect"
set af=-af "volume=2.0,volumedetect"
set af=-af "volume=+15dB,volumedetect"
set af=-af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect"
echo %af%

ffmpeg -i %input% -c:v copy  %af% -y FFF.mp4







pause
exit

ffmpeg -i %input% -c:v copy -af "loudnorm=I=-23:TP=-1:LRA=6,volumedetect"  -y FFF.mp4
loudnorm=I=-23:TP=-1:LRA=6
I是整體響度，反映了音頻的主觀響度
LRA是響度範圍
tp是真峰值功率


ffmpeg -i %input% -c:v copy -af "volume=-10dB,volumedetect"  -y FFF.mp4

