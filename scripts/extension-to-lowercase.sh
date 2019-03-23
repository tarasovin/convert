#!/bin/bash
for f in *
do 
  e="${f##*.}"
  b="${f%.*}"
  mv "$f" "${b}.${e,,}" 2>/dev/null
done
