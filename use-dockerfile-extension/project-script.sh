if ! command -v audiowaveform &> /dev/null
then
    echo "audiowaveform could not be found"
else
    echo "audiowaveform was found."
fi

if ! command -v ffmpeg &> /dev/null
then
    echo "ffmpeg could not be found"
else
    echo "ffmpeg was found."
fi
