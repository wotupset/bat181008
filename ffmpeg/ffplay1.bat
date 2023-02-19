echo off
chcp 65001

set /p input=檔案:

ffplay -showmode 2 %input%




pause
exit

播放图形的显示模式有两种，
一种是波形图，showmode=1
一种是频谱图，showmode=2
音乐默认播放的是频谱图。
如果你不想显示任何播放图形
showmode=0