#!/bin/bash

for f in *.pdf; do
#convert -units PixelsPerInch -density 300 -quality 98 -colorspace sRGB "$f" "$(basename "$f" .pdf)".jpg;
#convert -units PixelsPerInch -density 250 -quality 85 -colorspace sRGB "$f" "$(basename "$f" .pdf)".jpg;
convert -units PixelsPerInch -density 200 -quality 90 -colorspace sRGB "$f" "$(basename "$f" .pdf)".jpg;
done
rm *.pdf 2>/dev/null

