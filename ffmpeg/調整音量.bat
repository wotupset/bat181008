


set /p input=�ɮ�:
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
I�O�����T�סA�ϬM�F���W���D�[�T��
Set integrated loudness target. Range is -70.0 - -5.0. Default value is -24.0.
LRA�O�T�׽d��
Set loudness range target. Range is 1.0 - 50.0. Default value is 7.0.
tp�O�u�p�ȥ\�v
Set maximum true peak. Range is -9.0 - +0.0. Default value is -2.0.




ffmpeg -i %input% -c:v copy -af "volume=-10dB,volumedetect"  -y FFF.mp4

