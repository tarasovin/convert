#!/bin/bash
libreoffice6.2 --headless --convert-to docx *.doc
rm *.doc 2>/dev/null
