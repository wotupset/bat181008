echo off
chcp 65001

set /p input=檔案:

ffplay  %input%  -x 800 -y 450 -vf "setpts=(1/2)*PTS" -af "atempo=2.0" 




pause
exit

加速x2
ffplay  %input%  -x 800 -y 450 -vf "setpts=(1/2)*PTS" -af "atempo=2.0" 


pause
-vf "setpts=(1/2)*PTS" -af "atempo=2.0" 
-vf "setpts=(1/2)*PTS" -af "atempo=2.0"
-x 640 -y 640

播放图形的显示模式有两种，
一种是波形图，showmode=1
一种是频谱图，showmode=2
音乐默认播放的是频谱图。
如果你不想显示任何播放图形
showmode=0