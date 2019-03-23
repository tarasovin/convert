#!/bin/bash
for f in *.pdf; do
PAGES_COUNT=$(pdftk "$f" dump_data|grep NumberOfPages| awk '{print $2}')
echo "Файл \"$f\" - $PAGES_COUNT стр." 
done
