@echo off
color 06
echo Author is Maligant#0632, free for any use
echo make sure to include file extensions
pause
CHOICE /C yn /N /D n /T 5 /M "Enable custom vidoe resolution? (y|N)"
IF ERRORLEVEL ==2 GOTO :continue
IF ERRORLEVEL ==1 GOTO :arg1
:continue
SET res=1280:720
:process
echo resolution set to %res%
SET /P image=[Path to image (Supports every image format I could find to test)]
SET /P aduio=[Path to audio (supports "most" formats)]
SET /P output=[Output name (include extension!!)
ffmpeg -r 1 -loop 1 -i %image% -i %audio% -acodec copy -r 1 -shortest -vf scale=%res% ep1.flv
echo finsihed. Output is %output%.
pause
exit
:arg1
SET /P res=[Resolution (W:H)]
goto :process