


set /p input=�ɮ�:
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
I�O�����T�סA�ϬM�F���W���D�[�T��
LRA�O�T�׽d��
tp�O�u�p�ȥ\�v


ffmpeg -i %input% -c:v copy -af "volume=-10dB,volumedetect"  -y FFF.mp4

