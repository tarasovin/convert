#!/bin/bash

BIN=/usr/local/bin

for f in *.pdf; do
		convert -units PixelsPerInch -density 300 -quality 99 -colorspace sRGB "$f" "$f"
done
chmod -R 777 *