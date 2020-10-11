## Audio Conversions


### from .ape to flac
    sudo apt-get install flac bchunk ffmpeg
    ffmpeg -i INPUT.ape output.wav
    bchunk -w output.wav CDImage.cue BASE_FILENAME
    flac --best BASE_FILENAME*
    find . \( -name '*.flac' -or -name '*.cue' \) -type f -delete
    
##### on all sub directories
    find . -type f -name *.ape -exec sh -c "ffmpeg -i \"{}\" "$d\"output.wav && bchunk -w "$d\"output.wav "$d\"CDImage.cue test" \;
    
    it works:
    find . -name "*.ape" -exec sh -c 'exec ffmpeg -i "$1" "${1%.ape}.wav"' _ {} \;
    
    # to split all flacs it founds based on the cue; problem is that the subfolders contain blank space: rename them first
    find . -name "*.cue" -exec sh -c 'exec shnsplit -f "$1" -d "$(dirname $1)" -o flac -t "%n_%p-%t" "${1%.cue}.flac"' _ {} \;
