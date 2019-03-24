#!/bin/bash

#source color.sh

#green() {
#	echo -e "${BOLD}${BGMAGENTA}${LGREEN}$1${NORMAL}"
#}

OLD_PATH=${PWD}
CPATH=${PWD}
BIN=/usr/local/bin

if [ "$1" != "" ]; then
	OLD_PATH=$CPATH
	CPATH=$1
fi
cd $CPATH

# Перемещаем все файлы из дочерних папок наверх
# find . -mindepth 2 -type f -print -exec mv {} . \;

# Перемещаем все pdf файлы из дочерних папок наверх
find . -name '*.pdf' -mindepth 2 -type f -print -exec mv {} . \;

#green "extension-to-lowercase.sh"
bash $BIN/extension-to-lowercase.sh

#green "xls-convert-to-xlsx.sh"
bash $BIN/xls-convert-to-xlsx.sh

#green "xlsx-convert-to-pdf.sh"
bash $BIN/xlsx-convert-to-pdf.sh

#green "doc-convert-to-docx.sh"
bash $BIN/doc-convert-to-docx.sh

#green "docx-convert-to-pdf.sh"
bash $BIN/docx-convert-to-pdf.sh

#green "jpeg-rename-to-jpg.sh"
bash $BIN/jpeg-rename-to-jpg.sh

#green "jpg-convert-to-pdf.sh"
bash $BIN/jpg-convert-to-pdf.sh

#green "pdf-mearge-all-pages.sh"
bash $BIN/pdf-mearge-all-pages.sh

# Делаем pdf не редактируемым

#green "pdf-split-to-pages.sh"
bash $BIN/pdf-split-to-pages.sh

#green "pdf-convert-to-jpg.sh"
bash $BIN/pdf-convert-to-jpg.sh

#green "jpg-convert-to-pdf.sh"
bash $BIN/jpg-convert-to-pdf.sh

#green "pdf-mearge-all-pages.sh"
bash $BIN/pdf-mearge-all-pages.sh

#green "pdf-echo-pagescount.sh"
bash $BIN/pdf-echo-pagescount.sh

# FILENAME=/home/heiko/dummy/packages.txt
# FILESIZE=$(stat -c%s "$FILENAME")
# echo "Size of $FILENAME = $FILESIZE bytes."

# file=file.txt
# minimumsize=90000
# actualsize=$(wc -c <"$file")
# if [ $actualsize -ge $minimumsize ]; then
#     echo size is over $minimumsize bytes
# else
#     echo size is under $minimumsize bytes
# fi

chmod -R 777 *

cd $OLD_PATH
