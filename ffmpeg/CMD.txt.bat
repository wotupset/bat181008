ffmpeg -h

cmd

ffmpeg -h encoder=libvpx
ffmpeg -h encoder=libvpx-vp9
ffmpeg -h encoder=libopus

exit


ffmpeg -ss 0:0:0.0 -to 0:0:1.0    -i 01.mp4   -vframes 3  %03d.jpg





