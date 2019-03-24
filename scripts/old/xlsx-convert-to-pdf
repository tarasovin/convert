#!/bin/bash

for f in *.xlsx; do
orientation-office.go landscape "$f" "$f"
done
libreoffice6.2 --headless --convert-to pdf *.xlsx
rm *.xlsx 2>/dev/null
