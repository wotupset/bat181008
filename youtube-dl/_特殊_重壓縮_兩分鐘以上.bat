echo off
chcp 65001
title 特殊

echo %date%
echo %time%

set vardate=%date:~2,2%%date:~5,2%%date:~8,2%
set vartime=%time:~0,2%
if /i %vartime% LSS 10 (set vartime=0%time:~1,1%)
set vartime=%vartime%%time:~3,2%%time:~6,2%

set "rand=%RANDOM%"
set "rand=00000%RANDOM%"
set "rand=%rand:~-5%"

set nnn=%vardate%_%vartime%_%rand%
echo %nnn%


set /p input=檔案:

set output=特殊%nnn%.webm


set tt=-ss 0:11:11.0 -to 0:12:55.0
set tt=-ss 0:0:50.0 -to 0:2:50.0
set tt=-ss 0:0:10.0 -to 0:2:5.0
set tt=-ss 0:6:50.0 -to 0:8:50.0
set tt0=
echo %tt%



set af=-af "loudnorm" -b:a 90k 
set af=-af "volume=+5dB" -b:a 90k 
set af=-af "loudnorm,volume=+10dB" -b:a 80k 
set af=-b:a 80k
set af=-af "loudnorm=I=-16:LRA=11:TP=-1.5,volumedetect"
set af=-af "volume=-10dB"
set af=

set vf=-vf "gblur,chromanr"
set vf=-vf "scale=960:540,setsar=1:1"
set vf=-s 960:540 

set wh=640
set wh=800
set wh0=960
set wh0=1280
set vf=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=



ffmpeg %tt% -i %input% -c:v h264_nvenc -ac 2 -pix_fmt yuv420p -map_metadata -1 -map_chapters -1 -sn -dn %vf% %af% -y "FFF.mp4"  


echo pause

set crf=-b:v 500k -r 25
set crf=-crf 40 -r 25
set crf0=-crf 40

set time0=%date%_%time%
ffmpeg -i "FFF.mp4" -c:v libvpx-vp9 -c:a libopus -ac 2 -pix_fmt yuv420p -vf "chromanr" %crf%   -static-thresh 2144421000 -tune-content screen -row-mt 1 -threads 6 -speed 4    -y %output% 
set time1=%date%_%time%

echo del "FFF02.mp4"

echo %time0%
echo %time1%
echo %output%




pause
exit
-row-mt 1 -threads 6 -speed 4 

-vf "chromanr" 
-row-mt 1 -cpu-used 2 -threads 8

-preset p7
-b:v 1000k


set vf=-filter_complex "[0:v][0:a]concat=n=1:v=1:a=1[v2][a2];[v2]scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1[v3]" -map "[v3]" -map [a2]

-map_metadata -1
-map_metadata:g -1
-map_metadata:s -1

-metadata:s handler_name="handler_name"
-metadata:s handler_name="handler_name"

ffmpeg -i "FFF.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y FFF01.ts
ffmpeg -i "concat:FFF01.ts" -c copy -bsf:a aac_adtstoasc -y "FFF02.mp4"




-metadata:s:v title="title" -metadata:s:v handler_name="handler_name"

ffmpeg -i "FFF.mp4" -c:v h264_nvenc  -y "FFF02.mp4"  
del "FFF.mp4"

-map 0:v:0 -map 0:a


-filter_complex "[0:v][0:a]concat=n=1:v=1:a=1[vv][aa]" -map "[vv]" -map "[aa]"
-filter_complex "[0:v]concat=n=1:v=1[vv]" -map "[vv]" -map 0:a 

-filter_complex "[0:v]concat=n=1:v=1[v2];[v2]scale=640:480:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1[v3]"  -map "[v3]" -map 0:a 


ffmpeg -i "FFF.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y FFF01.ts
ffmpeg -i "concat:FFF01.ts" -c copy -bsf:a aac_adtstoasc -y "FFF02.mp4"
del "FFF01.ts"



 -qp 10

ffmpeg -i "FFF02.mp4" -c:v libvpx-vp9 -c:a libopus -row-mt 1 -cpu-used 2 -r 25  -crf 40  -static-thresh 2144421000  %af%   -y %output% 
ffmpeg -i "FFF02.mp4" -c:v libvpx-vp9 -c:a libopus  -y %output% 

-row-mt 1 -cpu-used 2 -r 25  -crf 40  -static-thresh 2144421000

-r 25
-preset fast


set vf=-vf "scale=640:640:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1,boxblur=10" 
set vf=-vf "scale=640:640:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1,pixelize=8:8" 




 
 
-static-thresh 2144421000
-r 30
-af "loudnorm"


-af "volume=+5dB" 
-af "loudnorm,volume=+5dB"
-af "loudnorm"

-an




:flags=bilinear


,gblur,chromanr
-r 30
-r 25
-af "loudnorm"

-r 25
-hwaccel auto
-af "volume=+0.1dB"
-qp 20

-static-thresh 2144421000 

set wh=960
set wh=800

set vf0=-vf "scale=%wh%:%wh%:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-vf "scale=800:450:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"

set vf0=-vf "scale=%wh%:%wh%:force_original_aspect_ratio=decrease,setsar=1:1"
set vf0=-s 450x800
set vf0=-s 800x450
set vf0=-s 960x540
set vf0=




set cv=-c:v mpeg4
set cv=-c:v msmpeg4v2
set cv=-c:v h264_nvenc -s 800x450
set cv=-c:v h264_nvenc -vf "scale=800:800:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"

set cv0=-c:v h264 -s 800x450
set cv0=-c:v ffv1
set cv0=-c:v h264
set cv0=-c:v flv
set cv0=



set cv20=-c:v libvpx-vp9 -c:a libopus -pix_fmt yuv420p -row-mt 1 -crf 40 -cpu-used 4
set cv20=-c:v libvpx-vp9 -c:a libopus -pix_fmt yuv420p -row-mt 1 -crf 40
set cv20=-c:v libvpx-vp9 -c:a libopus -pix_fmt yuv420p -row-mt 1 
set cv20=-c:v libvpx -crf 40
echo %cv2%



ffmpeg -i "FFF.mp4" -c copy -bsf:v h264_mp4toannexb -f mpegts -y FFF01.ts
ffmpeg -i "concat:FFF01.ts" -c copy -bsf:a aac_adtstoasc -y "FFF02.mp4"

h264_mp4toannexb
转换H.264编码比特流，从长前导模式为开始码前导模式（定义在ITU-T H.264 的附录B）
它是一些流格式要求的，通常如MPEG-2传输流格式("mpegts")
aac_adtstoasc
转换MPEG-2/4 的AAC ADTS 到 MPEG-4 音频的专用配置比特流滤镜。
这个滤镜从MPEG-2/4 的ADTS头创建一个移除了ADTS头的MPEG-4音频专用配置流

-af "volume=+1dB"

-vf "scale=800:800:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"

-map_metadata:g -1 -map_chapters -1 -ac 2 -pix_fmt yuv420p -sn -dn  -map 0:v:0 -map 0:a:0

h264 4953
h264_nvenc 4950
msmpeg4v2 3679
mpeg4 3599
flv 3454 畫質不好 寧可調整vp9的crf


crf40
h264 3110
h264_nvenc 3102
msmpeg4v2 2916
mpeg4 2923
flv 2743 畫質不好 寧可調整vp9的crf

有不同的壓縮方式壓成小畫面 跟輸出長寬相同


ffmpeg %tt% -i %input% %cv% -y "FFF.mkv"  

-cpu-used 4
速度快 但膨脹了 2907->3052

-deadline best -quality best
花了超長時間轉檔 幾乎沒有減少 3790->3736

-c:v libvpx 
-c:v libvpx-vp9 -c:a libopus -row-mt 1 -crf 35
-s 450x800
-s 800x450
-vf "scale=800:450:flags=bilinear:force_original_aspect_ratio=decrease,setsar=1:1"

直接轉webm =5154
先轉h264_nvenc =4343
先轉msmpeg4v2 =4375
先轉mpeg4 =4786
先轉flv =4370
先轉h264 =3716

-s 800x450
-s 960x540
-s 1280x720
-c:v h264_nvenc
-c:v flv
-c:v msmpeg4v2
