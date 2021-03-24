# FFmpeg-video-to-gif-batch-convert
Batch script for Windows to convert a folder of videos (FFmpeg supported formats) to gif.

## How it Works
`convert.batch` reads `list.txt` and parses every line containing `<name>.<video type>` to FFmpeg to convert to respective `<name>.gif` files. 

## How to Use
1. Move both files `convert.batch` and `list.txt` to an empty new folder.
2. Move video files to the same folder.
3. Replace the contents in `list.txt` with the names of the video files to convert.
4. Open a `cmd` terminal in the folder.
  >cd \<folder path\>
5. Run the `convert.bat`.
  >convert.bat

## Prerequisites
Install [FFmpeg](https://ffmpeg.org/download.html "Download FFmpeg") and set its path variables. Check that FFmpeg is working by running in `cmd` terminal
  >ffmpeg
