### convert .heic to jpg

sudo apt-get install libheif-examples
for file in *.heic; do heif-convert $file ${file/%.heic/.jpg}; done
