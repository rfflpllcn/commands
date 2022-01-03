### convert .heic to jpg

sudo apt-get install libheif-examples

for file in *.heic; do heif-convert $file ${file/%.heic/.jpg}; done

sudo find . -type f -name '*.heic' -exec rm -r {} +

