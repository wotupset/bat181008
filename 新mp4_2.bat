set qqq01=_output_a.mp4
set qqq02=_output_aa.mp4


ffmpeg -y  -ss 00:00:50.0 -to 00:01:1.0 -i "%qqq01%"  -preset veryfast -tune fastdecode  -metadata title="不能只有我看到" "%qqq02%" 



start "" "%qqq02%" 


exit
pause

-t 00:0:21.0

-ss 00:00:00.0 -to 00:00:41.6

-preset veryfast -tune fastdecode

