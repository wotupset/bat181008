ffmpeg -h encoder=libvpx >libvpx.txt
ffmpeg -h encoder=libvpx-vp9 >libvpx-vp9.txt
ffmpeg -h encoder=libopus >libopus.txt
ffmpeg -h encoder=vp9_qsv >vp9_qsv.txt

ffmpeg -h encoder=libx264 >libx264.txt
ffmpeg -h encoder=h264_nvenc >h264_nvenc.txt

ffmpeg -codecs >codecs.txt
ffmpeg -encoders >encoders.txt
ffmpeg -decoders >decoders.txt


ffmpeg -hwaccels >hwaccels.txt
ffmpeg -help >help.txt
ffmpeg -formats >formats.txt




ffmpeg -version

cmd

pause
exit

ffmpeg  -colors 



echo file '_output_.mp4' >mylist.txt