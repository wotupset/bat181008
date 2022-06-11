set /p input=檔案:

ffmpeg   -i  %input%   -c:v h264_nvenc   -filter:v "crop=800:450:0:75"  -y "crop.mp4"






pause
exit



800x600 = > 800x450
-filter:v "crop=800:450:0:75" 


Crop area with size 100x100 at position (12,34).
crop=100:100:12:34
Using named options, the example above becomes:
crop=w=100:h=100:x=12:y=34




使用filter實現寬高減半顯示：
ffplay.exe sample.rmvb -vf scale=iw/2:ih/2
實現視頻的水平鏡像效果。
ffplay.exe sample.rmvb -vf hflip
縮小到960x540輸出:
./ffmpeg -i input.mp4 -vf scale=960:540 output.mp4 



-ss 0:0:0.0 -to 0:0:19.5


You can use -crf 0 to create a lossless video.



ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -crf 10 -b:v 0   "vp9_lossless.webm"

ffmpeg -y -i "%input%"  -crf 10 -b:v 0k  -pix_fmt yuv420p   "h264_lossless.mp4"

ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -crf 10 -b:v 0  -an  "vp9_lossless.webm"


out%Y-%m-%d_%H-%M-%S.mp4

會以三位數字，自動編號的檔名。
ffmpeg -i input.mp4 -map 0 -c copy -f segment -segment_time 1800 -reset_timestamps 1 output_%03d.mp4

-c copy -f segment -segment_time 1800 -reset_timestamps 1


ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -lossless 1  -vf "scale=800:800:force_original_aspect_ratio=decrease" "vp9_lossless.webm"


ffmpeg -y -i "%input%"  -crf 10 -b:v 0k  "h264_lossless.mp4"


ffmpeg -y  -i "%input%"    -c:v libvpx-vp9  -lossless 1  "vp9_lossless.webm"

ffmpeg -y -i "%input%"  -crf 10 -b:v 0k  "h264_lossless.mp4"


ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9 -crf 10 -b:v 0  "vp9_crf10.webm"

ffmpeg -y  -i "%input%" -map_chapters -1 -map_metadata -1    "h264_lossless.mp4"

ffmpeg -y  -i "%input%" -map_chapters -1 -map_metadata -1  -c:v copy  "h264_lossless.mp4"



ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9  -lossless 1  "vp9_lossless.webm"



ffmpeg -y      -i "%input%"    -c:v libvpx-vp9 -crf 10  "vp9_crf10.webm"
ffmpeg -y  -an -i "%input%"    -c:v libvpx-vp9 -crf 10 -b:v 0  "vp9_crf10.webm"



ffmpeg -y  -i %input% -crf 5   "h264_lossless.mp4"

ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

ffmpeg -y -i "%input%" -c:v copy -an  "webm_copy.webm"
-lossless 1
 -crf 10 -b:v 0k
-ss 00:0:6.5 -to 00:0:12.5


ffmpeg -y   -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"
ffmpeg -y -i "%input%" -crf 0   "h264_lossless.mp4"
ffmpeg -y -i "%input%" -c:v copy  "h264_lossless.mp4"

ffmpeg -y  -i "%input%"    -c:v libvpx-vp9 -lossless 1  "vp9_lossless.webm"

