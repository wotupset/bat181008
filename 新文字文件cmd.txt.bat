ffmpeg -h encoder=libvpx >libvpx.txt
ffmpeg -h encoder=libvpx-vp9 >libvpx-vp9.txt
ffmpeg -h encoder=libx264 >libx264.txt
ffmpeg -h encoder=h264_nvenc >h264_nvenc.txt
ffmpeg -h encoder=hevc_nvenc >hevc_nvenc.txt


ffmpeg -codecs >codecs.txt
ffmpeg -encoders >encoders.txt
ffmpeg -decoders >decoders.txt


ffmpeg -hwaccels >hwaccels.txt
ffmpeg -help >help.txt



ffmpeg -version

cmd

pause
exit