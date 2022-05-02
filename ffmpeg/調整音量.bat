


set /p input=檔案:
echo %date%_%time%



set af=-af "volume=2.0,volumedetect"
set af=-af "volume=+15dB,volumedetect"
set af=-af "loudnorm=I=-20:TP=-2:LRA=7,volumedetect"
echo %af%

ffmpeg -i %input% -c:v copy  %af% -y FFF.mp4







pause
exit

ffmpeg -i %input% -c:v copy -af "loudnorm=I=-20:TP=-10:LRA=6,volumedetect"  -y FFF.mp4
loudnorm=I=-23:TP=-1:LRA=6
I是整體響度，反映了音頻的主觀響度
Set integrated loudness target. Range is -70.0 - -5.0. Default value is -24.0.
LRA是響度範圍
Set loudness range target. Range is 1.0 - 50.0. Default value is 7.0.
tp是真峰值功率
Set maximum true peak. Range is -9.0 - +0.0. Default value is -2.0.




ffmpeg -i %input% -c:v copy -af "volume=-10dB,volumedetect"  -y FFF.mp4

