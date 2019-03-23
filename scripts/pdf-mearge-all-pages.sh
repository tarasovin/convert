#!/bin/bash
TMP=$(mktemp -d ./tmp.XXXXXXXXX)
pdftk *.pdf cat output "$TMP/${PWD##*/}.pdf"
rm *.pdf 2>/dev/null
mv $TMP/*.pdf ./ 2>/dev/null
rm -R $TMP/ 2>/dev/null
