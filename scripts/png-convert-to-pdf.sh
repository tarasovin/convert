#!/bin/bash

for f in *.png; do
convert "$f" "$(basename "$f" .png)".pdf;
done
rm *.png 2>/dev/null
