


set /p input=ÀÉ®×:
echo %date%_%time%



ffmpeg -i %input% -c:v copy -af "volume=-10dB,volumedetect"  -y FFF.mp4







pause
exit