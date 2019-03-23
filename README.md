[`pdftk`](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit)
[`imagemagick`](https://www.imagemagick.org/)
[`libreoffice6.2`](https://help.libreoffice.org/Common/Starting_the_Software_With_Parameters/ru)
[`gosh`](https://github.com/mkouhei/gosh)
[`gorun`](https://github.com/erning/gorun)
[`elvish`](https://github.com/elves/elvish)


 `docker build -t tarasov/convert .`


 `docker run --rm -it -v "${PWD}":/files tarasov/convert bash`


 `docker run --rm -v "${PWD}":/files tarasov/convert pdftk "filename.pdf" burst`

 `docker run --rm -v "${PWD}":/files tarasov/convert convert "filename.jpg" "filename.pdf"`

 `docker run --rm -v "${PWD}":/files tarasov/convert libreoffice --invisible --headless --nologo --convert-to xlsx 1.xls --outdir /files`



convert-to-pdf.sh 
extension-to-lowercase.sh
xls-convert-to-xlsx.sh
xlsx-convert-to-pdf.sh
jpeg-rename-to-jpg.sh
jpg-convert-to-pdf.sh
pdf-mearge-all-pages.sh
pdf-echo-pagescount.sh
pdf-split-to-pages.sh
pdf-convert-to-jpg.sh
jpg-convert-to-pdf.sh
pdf-mearge-all-pages.sh
