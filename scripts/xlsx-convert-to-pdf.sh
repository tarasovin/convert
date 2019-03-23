#!/bin/bash
libreoffice6.2 --headless --convert-to pdf *.xlsx
rm *.xlsx 2>/dev/null
