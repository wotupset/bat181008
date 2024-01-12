echo off
chcp 65001


set /p input=檔案:
echo %input%

set tt=-ss 0:0:10.0 -to 0:0:10.0
set tt=

ffmpeg -hwaccel cuda -hwaccel_output_format cuda %tt% -i %input% ^
-vf "scale_cuda=1280:1280:force_original_aspect_ratio=decrease,hwdownload,format=nv12" ^
-c:v h264_nvenc  -pix_fmt yuv420p -y _TEST.mp4


cmd
exit

-f null -

指定cuda資料會放在硬體
-hwaccel_output_format cuda 
沒指定的話 需要在vf前面加上hwupload_cuda
YUV420P 的片源通常硬體加速解碼會輸出 NV12 格式

-c:v h264_nvenc  -pix_fmt yuv420p -y _TEST.mp4


ffmpeg -devices  


yt-dlp.exe  https://streamable.com/o/hyphyp
youtube-dl -f worst URL

best: Select the best quality format represented by a single file with video and audio.
worst: Select the worst quality format represented by a single file with video and audio.
bestvideo: Select the best quality video-only format (e.g. DASH video). May not be available.
worstvideo: Select the worst quality video-only format. May not be available.
bestaudio: Select the best quality audio only-format. May not be available.
worstaudio: Select the worst quality audio only-format. May not be available.



yt-dlp.exe https://www.youtube.com/watch?v=i1Frk4XbzzI
--proxy "140.227.198.33"



yt-dlp -f best https://streamable.com/27851m


-f "best[fps>30]"


ffmpeg -i yt_dl.mp4 -vf scale=120:-1,eq=contrast=10 -sws_flags neighbor -pix_fmt monob -f rawvideo yt_dl.tar.gz
cmd

youtube-dl -f best https://streamable.com/4fzjx5



youtube-dl -f best https://streamable.com/y3njol
youtube-dl -f best https://streamable.com/4fzjx5


cmd