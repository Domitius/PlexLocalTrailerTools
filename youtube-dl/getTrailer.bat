@echo off
ECHO Download Tool For Local Trailers in Plex.
ECHO -------------------------------------------------

:: Collecting where we started.
SET currentPath=%cd%
:: Collecting the absolute folder path.
SET /P movieFolder=Movie Folder?
SET videoPath="C:\Users\Gavin Burris\Videos\"
SET folderPath=%videoPath%%movieFolder%

ECHO I am going to move into %folderPath%

:: CDing into the Movies Folder.
CD %folderPath%

:: Creating the Trailer Folder.
:: if trailer folder exists, do not make another folder.
if not exist Trailers (
	MKDIR Trailers
)
:: Moving to the Trailer Folder.
CD Trailers

SETLOCAL	
:: Collecting the YouTube URL
SET /P url=Youtube URL http:// included?:
:: Downloading the video.
"C:\Users\Gavin Burris\Videos\youtube-dl\youtube-dl.exe" "%url%"
ENDLOCAL
:: renaming the file.
MOVE *.mp4 "Theater Trailer#1.mp4"	
:: CDing back to where we started..
CD /D %currentPath%
