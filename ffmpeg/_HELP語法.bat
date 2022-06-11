ffmpeg -h encoder=libvpx-vp9 >libvpx-vp9.txt
ffmpeg -h encoder=libvpx >libvpx.txt

ffmpeg -h encoder=h264_nvenc >h264_nvenc.txt
ffmpeg -h encoder=libx264 >libx264.txt

ffmpeg -h encoder=libaom-av1 >libaom-av1.txt
ffmpeg -h encoder=librav1e >librav1e.txt
ffmpeg -h encoder=libsvtav1 >libsvtav1.txt


ffmpeg -h encoder=libwebp >libwebp.txt
ffmpeg -h encoder=ffv1 >ffv1.txt

ffmpeg -h >help.txt




ffmpeg -encoders >encoders.txt
ffmpeg -decoders >decoders.txt

xcopy *.txt .\_help\*.txt
del *.txt


echo file '_output_.mp4' >mylist.txt
ffmpeg -version

cmd





pause
exit

ffmpeg -h encoder=libtheora 


ffmpeg -h encoder=h263 >h263.txt


ffmpeg -h encoder=libx264 >libx264.txt
ffmpeg -h encoder=libopus >libopus.txt
ffmpeg -h encoder=libvpx >libvpx.txt
ffmpeg -h encoder=vp9_qsv >vp9_qsv.txt
ffmpeg -codecs >codecs.txt




ffmpeg -hwaccels >hwaccels.txt
ffmpeg -help >help.txt
ffmpeg -formats >formats.txt



ffmpeg  -colors 



echo file '_output_.mp4' >mylist.txt