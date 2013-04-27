#!/bin/bash
#
# Create timelapse movies from images in the output/screen and output/isight folders
#
SOURCES=( screen isight )
# IMGSRC=isight

for src in "${SOURCES[@]}"
do

  COUNTER=0;
  rm output/$src/series/*.jpg

  for i in `find output/$src -name '*.jpg'` ;
  do
    # Write the filename to be friendly with ffmpeg's old filename input
    FILENAME=`printf '%05d.jpg' $COUNTER`
    cp $i output/$src/series/$FILENAME
    let COUNTER=COUNTER+1;
  done

  nice ffmpeg -r 24 -i output/$src/series/%5d.jpg output/videos/timelapse-$src.mov

done
