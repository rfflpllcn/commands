# Basic

### pdftoppm to convert a PDF to a PNG

pdftoppm input.pdf outputname -png

This will output each page in the PDF using the format outputname-01.png, with 01 being the index of the page.
Converting a single page of the PDF

pdftoppm input.pdf outputname -png -f {page} -singlefile

Change {page} to the page number. It's indexed at 1, so -f 1 would be the first page.
Specifying the converted image's resolution

The default resolution for this command is 150 DPI. Increasing it will result in both a larger file size and more detail.

To increase the resolution of the converted PDF, add the options -rx {resolution} and -ry {resolution}. For example:

pdftoppm input.pdf outputname -png -rx 300 -ry 300
