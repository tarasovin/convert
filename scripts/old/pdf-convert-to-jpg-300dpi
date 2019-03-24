#!/bin/bash

for f in *.pdf; do
convert -units PixelsPerInch -density 300 -quality 99 -colorspace sRGB "$f" "$(basename "$f" .pdf)".jpg;
done
rm *.pdf 2>/dev/null

