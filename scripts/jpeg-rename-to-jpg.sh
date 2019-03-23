#!/bin/bash

for f in *.jpeg; do mv "$f" "$(basename "$f" .jpeg)".jpg 2>/dev/null; done
rm *.jpeg 2>/dev/null
