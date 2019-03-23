#!/bin/bash
TMP=$(mktemp -d ./tmp.XXXXXXXXX)
NAME=$TMP/${PWD##*/}.pdf
if [ "$1" != "" ]; then
	NAME=$1
fi
pdftk *.pdf cat output "$NAME"
rm *.pdf 2>/dev/null
mv $TMP/*.pdf ./ 2>/dev/null
rm -R $TMP/ 2>/dev/null
