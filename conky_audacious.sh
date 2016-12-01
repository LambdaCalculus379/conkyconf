#!/bin/bash
#Check on Audacious status to report to conky

#variable declarations
check=`audtool --current-song`

playback_status=`audtool --playback-status`

aud="Audacious is now"
status=`audtool --playback-status`
title=`audtool --current-song-tuple-data title`
artist=`audtool --current-song-tuple-data artist`
album=`audtool --current-song-tuple-data album`
year=`audtool --current-song-tuple-data year`
track_no=`audtool --current-song-tuple-data track-number`
track_length=`audtool --current-song-length`

#conditional statments starts
if [ "${check}" == "No song playing." ]; #Check if audacious is running
then
    echo "Audacious is not running"
    
elif [ "${playback_status}" == "paused" -o "${playback_status}" == "stopped" ]; #Check for 'paused' and 'stopped' state
then
    echo ${aud}  ${status}
    
    
else #..:Music informations:..#
    echo ${aud}  ${status} 
    echo  "Title:" ${title}
    echo  "Artist:" ${artist}
    echo  "Album:" ${album}
    echo  "Year:" ${year}
    echo  "Track No:" ${track_no}
    echo  "Track Length:" ${track_length}
fi
