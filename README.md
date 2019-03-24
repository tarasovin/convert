[`pdftk`](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit)
[`imagemagick`](https://www.imagemagick.org/)
[`libreoffice6.2`](https://help.libreoffice.org/Common/Starting_the_Software_With_Parameters/ru)
[`gosh`](https://github.com/mkouhei/gosh)
[`gorun`](https://github.com/erning/gorun)
[`elvish`](https://github.com/elves/elvish)


 `docker build -t tarasov/convert .`

 `docker run --rm -it --name "convert" -v "${PWD}":/files tarasov/convert`



all-to-pdf
any-to-pdf

csv-to-xlsx - Преобразует все файлы csv в xlsx в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.csv"

doc-to-pdf - Преобразует все файлы doc в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.doc".

doc-to-docx - Преобразует все файлы doc в docx в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.doc"

docx-to-doc - Преобразует все файлы docx в doc в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.docx"

docx-to-landscape - Преобразует все файлы docx в текущем каталоге в альбомный режим. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.docx". Вторым параметром может быть путь к каталогу сфайлами. 

docx-to-pdf - Преобразует все файлы docx в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.docx". Вторым параметром может быть задано значение landscape (по умолчанию) или portrait для соответствующей ориентации страниц

docx-to-portrait - Преобразует все файлы docx в текущем каталоге в портретный режим. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.docx". Вторым параметром может быть путь к каталогу сфайлами. 

extract-here (синоним extract-to-top) - Перемещает все файлы из подкаталогов в текущий каталог. Первым параметром при вызове может быть указан фильтр, например: extract-here "*.pdf" перемащает все файлы PDF из подкаталогов в текущий каталог

ext-to-lower - Переименовывает все файлы в текущем каталоге приводя расширения всех файлов к нижнему регистру.

jpeg-rotate - Поворачивает все файлы jpeg в текущем каталоге на заданный угол (по умолчанию 90 градусов вправо). Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpeg". Вторым параметром может быть задано значение угла поворота (по умолчанию 90). Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

jpeg-to-jpg - Преобразует все файлы jpeg в jpg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpeg"

jpeg-to-pdf - Преобразует все файлы jpeg в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpeg"

jpeg-to-png - Преобразует все файлы jpeg в png в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpeg"

jpg-rotate - Поворачивает все файлы jpg в текущем каталоге на заданный угол (по умолчанию 90 градусов вправо). Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpg". Вторым параметром может быть задано значение угла поворота (по умолчанию 90). Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

jpg-to-jpeg - Преобразует все файлы jpg в jpeg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpg"

jpg-to-pdf - Преобразует все файлы jpg в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpg"

jpg-to-png - Преобразует все файлы jpg в png в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.jpg"

pdf-imaged - Преобразует все файлы pdf в текущем каталоге в pdf файлы состоящие из изображений. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Третьим параметром может быть задано качество изображения QUALITY (по умолчанию 90)

pdf-lastpage - Разделяет pdf файл на два файла. В первом содержатся все страницы без последней, а во втором пследняя страница документа. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". 

pdf-merge - Объединяет все файлы pdf в текущем каталоге в один pdf файл. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано имя выходного pdf файла (по умолчанию имя файла будет равно имени каталога).

pdf-pages - Получает и выводид на экран количество страниц всех файлов pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов). По умолчанию маска равна "*.pdf".

pdf-rotate - Поворачивает все файлы pdf в текущем каталоге на заданный угол (по умолчанию 90 градусов вправо). Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано значение угла поворота (по умолчанию 90). Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

pdf-split - Разбивает все файлы pdf в текущем каталоге на страницы, сохраняя каждую страницу как отдельный pdf файл. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf".

pdf-to-jpeg - Преобразует все файлы pdf в jpeg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Третьим параметром может быть задано качество изображения QUALITY (по умолчанию 90)

pdf-to-jpg - Преобразует все файлы pdf в jpg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Третьим параметром может быть задано качество изображения QUALITY (по умолчанию 90)

pdf-to-png - Преобразует все файлы pdf в png в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.pdf". Вторым параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Третьим параметром может быть задано качество изображения QUALITY (по умолчанию 90)

png-rotate - Поворачивает все файлы png в текущем каталоге на заданный угол (по умолчанию 90 градусов вправо). Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.png". Вторым параметром может быть задано значение угла поворота (по умолчанию 90). Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

png-to-jpeg - Преобразует все файлы png в jpeg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.png"

png-to-jpg - Преобразует все файлы png в jpg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.png"

png-to-pdf - Преобразует все файлы png в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.png"

xls-to-pdf - Преобразует все файлы xls в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xls".

xls-to-xlsx - Преобразует все файлы xls в xlsx в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xls"

xlsx-to-jpeg - Преобразует все файлы xlsx в jpeg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть задано значение landscape (по умолчанию) или portrait для соответствующей ориентации страниц. Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

xlsx-to-jpg - Преобразует все файлы xlsx в jpg в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть задано значение landscape (по умолчанию) или portrait для соответствующей ориентации страниц. Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

xlsx-to-landscape - Преобразует все файлы xlsx в текущем каталоге в альбомный режим. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть путь к каталогу сфайлами. 

xlsx-to-pdf - Преобразует все файлы xlsx в pdf в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть задано значение landscape (по умолчанию) или portrait для соответствующей ориентации страниц

xlsx-to-png - Преобразует все файлы xlsx в png в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть задано значение landscape (по умолчанию) или portrait для соответствующей ориентации страниц. Третьим параметром может быть задано разрешение изображения DENSITY (по умолчанию 200). Четвертым параметром может быть задано качество изображения QUALITY (по умолчанию 90)

xlsx-to-portrait - Преобразует все файлы xlsx в текущем каталоге в портретный режим. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx". Вторым параметром может быть путь к каталогу сфайлами. 

xlsx-to-xls - Преобразует все файлы xlsx в xls в текущем каталоге. Первым параметром может быть задана маска поиска файлов в текущем каталоге (без подкаталогов) для преобразования. По умолчанию маска равна "*.xlsx"

Дополнительные утилиты:
isonoise
separate
textcleaner