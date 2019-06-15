@echo off
ECHO Download Tool For Local Trailers in Plex.
ECHO -------------------------------------------------


:: This script is supposed to reside in the youtube-dl folder.
::
::					Videos\ ---------
::						|			|
::						|			SpongeBobSquarePantsTheMovie\
::					youtube-dl\ -------------
::						|					|
::					getTrailer.bat		youtube-dl.exe


:: Collecting where we started.
SET currentPath=%cd%

:: Collecting the movie folder.
SET /P movieFolder=Movie Folder?

:: Setting absolute path to video folder.
SET videoPath="C:\Users\John Doe\Videos\"

:: creating the folderPath to the movie.
SET folderPath=%videoPath%%movieFolder%

:: Letting the user know what's going on.
ECHO I am going to move into %folderPath%

:: CDing into the Movies Folder.
CD %folderPath%

:: if the trailer folder does not exist, create a Trailers folder.
if not exist Trailers (
	MKDIR Trailers
)

:: CDing to the Trailer Folder.
CD Trailers

SETLOCAL
:: Collecting the YouTube URL
SET /P url=Youtube URL http:// included?:
:: Downloading the video.
"C:\Users\John Doe\Videos\youtube-dl\youtube-dl.exe" "%url%"
ENDLOCAL

:: renaming the trailer to Plex standards.
MOVE *.mp4 "Theater Trailer#1.mp4"	

:: CDing back to where we started..
CD /D %currentPath%

:: optional cls