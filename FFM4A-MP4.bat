@echo off
color 02
echo Author is Maligant#0632, free for any use
echo make sure to include file extensions
pause
SET /P mp4=[PATH to MP4 file]
SET /P m4a=[PATH to M4A file]
SET /P output=[Name of Output file]
ffmpeg -i %mp4%.mp4 -i %m4a%.m4a -c:v copy -c:a copy %output%.mp4
del %mp4%
del %m4a%
echo Finished with no errors! Output file is: %output%.
pause
exit

