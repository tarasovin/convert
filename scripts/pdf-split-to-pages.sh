#!/bin/bash
for f in *.pdf; do
pdftk "$f" burst;
rm "$f" 2>/dev/null;
done
rm "doc_data.txt" 2>/dev/null;
