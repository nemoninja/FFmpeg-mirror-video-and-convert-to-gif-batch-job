@echo off 
for /F "tokens=*" %%a in (list.txt) do (
  ffmpeg -i %%a -c copy -an %%a.mkv
  ffmpeg -i %%a.mkv -filter_complex "[0:v]reverse,fifo[r];[0:v][r] concat=n=2:v=1 [v]" -map "[v]" %%a.gif
  del %%a.mkv
  echo "converted %%a"
)
pause
