# FFmpeg-mirror-video-and-convert-to-gif-batch-job
1. Creates a reversed copy of your original file.
2. Appends the reversed copy of the original to the video file.
3. Converts the combined video file to a gif.
4. Repeats this conversion for all video files in the folder using a batch file.

## How it Works
`convert.batch` reads `list.txt` and parses every line containing `<name>.<video type>` to FFmpeg to do the listed conversions.
The output would be the respective `<name>.gif` files. 

Files will be converted to `.mkv` format before the conversion for a clearer and more consistent output.
The `.mkv` fiels will be deleted after the conversion to `.gif`.

## How to Use
1. Move both files `convert.batch` and `list.txt` to an empty new folder.
2. Move video files to the same folder.
3. Replace the contents in `list.txt` with the names of the video files to convert.
4. Open a `cmd` terminal in the folder.
  >cd \<folder path\>
5. Run the `convert.bat`.
  >convert.bat

## Prerequisites
Install [FFmpeg](https://ffmpeg.org/download.html "Download FFmpeg") and set its path variables. Check that FFmpeg is working by running the following in `cmd` terminal,
  >ffmpeg
