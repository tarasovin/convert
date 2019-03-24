#!/bin/bash

let COUNT=0
for f in *.pdf; do
PAGES_COUNT=$(pdftk "$f" dump_data|grep NumberOfPages| awk '{print $2}')
echo "Файл \"$f\" - $PAGES_COUNT стр."
let COUNT=COUNT+PAGES_COUNT
done
echo "Всего \"$COUNT\" стр."