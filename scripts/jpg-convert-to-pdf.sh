#!/bin/bash

for f in *.jpg; do
convert "$f" "$(basename "$f" .jpg)".pdf;
done
rm *.jpg 2>/dev/null
