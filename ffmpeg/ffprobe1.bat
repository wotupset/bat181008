echo off
chcp 65001

set /p input=檔案:


ffprobe -hide_banner -show_streams %input%



pause
exit

#只查看音频
ffprobe -show_frames -select_streams a -of xml input.mp4
#只查看视频
ffprobe -show_frames -select_streams v -of xml input.mp4
#只查看字幕
ffprobe -show_frames -select_streams s -of xml input.mp4



查看流信息
ffprobe -show_streams SampleVideo_1280x720_1mb.mp4

查看封装格式
ffprobe -show_format SampleVideo_1280x720_1mb.mp4
ffprobe  %input%

-show_error -show_format -show_streams
ffprobe -show_entries frame=pkt_size,pkt_pts_time %input%
