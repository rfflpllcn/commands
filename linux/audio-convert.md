## Audio Conversions


### from .ape to flac
    sudo apt-get install flac bchunk ffmpeg
    ffmpeg -i INPUT.ape output.wav
    bchunk -w output.wav CDImage.cue BASE_FILENAME
    flac --best BASE_FILENAME*
    find . \( -name '*.flac' -or -name '*.cue' \) -type f -delete
    
##### on all sub directories
    find . -name "*.ape" -exec sh -c 'exec ffmpeg -i "$1" "${1%.ape}.flac"' _ {} \;
    
    # remove blanks from dir names
    find . -depth -type d -name '* *'  -execdir bash -c 'mv "$1" "${1// /}"' bash {} ';'
    
    # to split all flacs it founds based on the cue; problem is that the subfolders contain blank space: rename them first
    find . -name "*.cue" -exec sh -c 'exec shnsplit -f "$1" -d "$(dirname $1)" -o flac -t "%n_%p-%t" "${1%.cue}.flac"' _ {} \;
    
    # delete ape files
    find . -name '*.ape' -type f -delete
    
    # delete CDImage.flac files
    find . -name 'CDImage.flac' -type f -delete
    
    
    
    find . -depth -name "*[&\!<>:\\|?*,]*" -execdir bash -c 'mv "$1" "${1//[&\!<>:\\|?*]/_}"' bash {}  ';'
   
   
   ³ see: https://community.synology.com/enu/forum/17/post/4628
    find . -depth -name '*[:<>?\"\\\|]*' | sed -e 'p' -e 's/[:<>?\"\\\|]/_/' -e 's/\([?:<>\"\\|]\)/\\\1/'|xargs -t -n 2 mv 