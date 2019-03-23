#!/bin/bash

BIN=/usr/local/bin

for f in *.pdf; do
	TMP=$(mktemp -d ./tmp.XXXXXXXXX)
	chmod -R 777 *
	mv "$f" "$TMP/$(basename "$f")" 2>/dev/null
	cd $TMP
	bash $BIN/pdf-split-to-pages.sh
	for a in *.pdf; do
		convert -units PixelsPerInch -density 300 -quality 99 -colorspace sRGB $a -rotate -90 $a ;
	done
	pdftk *.pdf cat output "$(basename "$f")"
	mv "$(basename "$f")" ../ 2>/dev/null
	rm *.pdf 2>/dev/null
	cd ..
	rm -R $TMP/ 2>/dev/null
done
chmod -R 777 *