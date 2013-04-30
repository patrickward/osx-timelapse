osx-timelapse
=============

This project is a series of quick Mac OSX shell scripts I put together for taking timed screenshots and iSight snapshots.

It was put together for use in the Ludum Dare challenge in order to capture a timelapse of my development.

I've only tested these on my Mac, which is currently:

- Macbook Pro (Early 2011)
- 8 Gb RAM
- Mac OSX Lion v10.8.3

USE AT YOUR OWN RISK. The License is WTFPL (see LICENSE.txt).

## Requirements

- screencapture (built in to Mac OS X)
- imagesnap (included in this repo)
- [ffmpeg](http://ffmpeg.org/)

## Useage

The only external hard requirement for these scripts (outside of the Mac environment) is the ffmpeg library.

The scripts assume all work will be done in the current directory.

To start the timelapse screenshots run `./timelapse`.

I set it to run every 2 minutes (120 seconds), but you can adjust that in the `timelapse.sh` file.

When you're done taking snapshots, `Ctrl-C` to stop the process.

Then, run `./create-timelapse.sh` to gather the images and create two videos:

- An `output/videos/timelapse-isight.mov` file for the iSight webcam pictures.
- An `output/videos/timelapse-screen.mov` file for the screenshot pictures.

Enjoy!

## Acknowledgements

There were several references I used to put this together and they all deserve the credit for helping me to essentially compile this little package together.

- [ImageSnap](https://github.com/rharder/imagesnap) is used to capture iSight
- [Gist from Shane Celis](https://gist.github.com/secelis/96094)
- [Blog from Mac Tips and Tricks](http://www.mactricksandtips.com/2009/12/take-timed-lapsed-screen-shots-from-terminal.html)
- [Blog from Carbonsilk](http://www.carbonsilk.com/development/timelapse-video-mac/)
- [Blog from labs.laan.com](http://labs.laan.com/wp/2011/01/how-to-make-time-lapse-screencaptures-of-your-design-work-for-free-mac/)

