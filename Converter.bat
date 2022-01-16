for %%F in (*.mp3) do ffmpeg.exe -loop 1 -i picture.jpg -i "%%F" -vf scale=1920:-2 -c:v libx264 -preset veryfast -tune stillimage -pix_fmt yuv420p -c:a copy -shortest "%%~nF.mp4"
pause