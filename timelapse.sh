#!/bin/bash
# timelapse
#
# Records a sequence of screencaptures at regular intervals on
# Mac OS X.
#
# Can also record using webcam via the imagesnap program.
#
while true; do
    timestamp=$(date '+%Y-%m-%dT%H%M%S');
    echo "Capturing screen at $timestamp."
    # For one screen:
    screencapture -t jpg -x "output/screen/screen1-$timestamp.jpg";
    # For two screens:
    # screencapture -x "screen1-$timestamp.png" "screen2-$timestamp.png";

    # If you have a webcam, you might want to capture that too.
    echo "Capturing isight at $timestamp."
    ./imagesnap/imagesnap -q "output/isight/isight-$timestamp.jpg";
    sleep 60;
done;

# After it's finished, you probably want to play around with image
# magick to stitch the images together and create a movie.
# Specifically look at the tools montage and convert.

