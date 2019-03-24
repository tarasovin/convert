#!/bin/bash

BIN=/usr/local/bin

for f in *.png; do
		convert -units PixelsPerInch -density 300 -quality 99 -colorspace sRGB "$f" -density 600 "$f";
done
chmod -R 777 *