echo off
chcp 65001

set /p poi=輸入::
echo "%poi%"

ffmpeg -i "%poi%" -bsf:a aac_adtstoasc -c:v copy  file.mp4

pause
exit


yt-dlp.exe -f  302+251  https://www.youtube.com/watch?v=u4f3jKqA4EQ

cmd

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