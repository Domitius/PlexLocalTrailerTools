# PlexLocalTrailerTools
These are a couple of scripts that will assist the process of downloading trailers for your Plex movies. Created for <strong> Windows </strong>


## Downloading youtube-dl.exe
You can download the exe from the site directly: https://yt-dl.org/latest/youtube-dl.exe<br>
Or you can view the project on Github here: https://github.com/ytdl-org/youtube-dl

/youtube-dl should reside in your Videos folder.

<br>

### getTrailer.bat
<p>This script is for manually downloading trailers for your Plex movies via youtube-dl.exe and youtube.com .
The script will ask for a movie folder (residing in the same directory as /youtube-dl) and a YouTube Trailer URL.
It then works it's magic and downloads the video into the newly created Trailers folder in your movie folder.
</p>

<h5>Script Set-Up</h5>
<ol>
  <li>SET videoPath="C:\Users\John Doe\Videos\" || Change this path accordingly, to your videos folder</li>
  <li>"C:\Users\John Doe\Videos\youtube-dl\youtube-dl.exe" || set this path to your youtube-dl.exe path. Hard code.</li>
</ol>

### getList.bat
<p>This script is for creating a txt list of movie folders in your Videos folder that do not have a Trailers folder.
The script will search recursivley through all folders in the Videos folder and check each one for a Trailers folder. The txt includes a date and time indicating when it was created. No input required. You will have to hard code your videos folder path in the for loop.</p>
    for /d %%i in ("C:\Users\John Doe\Videos\*") do (

### autoTrailer.bat
<p>This is the coolest script out of the bunch. It, in a sense, binds the other two scripts together and scans through all movie folders in the Videos folder and automagically downloads a trailer from youtube and puts it in the correct spot.</p>

<h5>Script Set-Up</h5>
Change the for loop to point to your Videos folder
    for /d %%i in ("C:\Users\John Doe\Videos\*") do (

and make sure your youtube-dl folder name and exe is spelled correctly to match the script (by default)
