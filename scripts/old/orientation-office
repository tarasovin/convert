#!/usr/bin/env gorun

//https://godoc.org/baliance.com/gooxml/schema/soo

package main

import (
	"log"
	"os"
	"strings"

	gooxml "baliance.com/gooxml/document"
	sml "baliance.com/gooxml/schema/soo/sml"
	wml "baliance.com/gooxml/schema/soo/wml"
	spreadsheet "baliance.com/gooxml/spreadsheet"
)

func docxSetPortrait(doc *gooxml.Document) {
	doc.BodySection().X().PgSz.OrientAttr = wml.ST_PageOrientationPortrait
	h := doc.BodySection().X().PgSz.HAttr
	w := doc.BodySection().X().PgSz.WAttr
	hn := doc.BodySection().X().PgSz.HAttr.ST_UnsignedDecimalNumber
	wn := doc.BodySection().X().PgSz.WAttr.ST_UnsignedDecimalNumber

	if *hn < *wn {
		doc.BodySection().X().PgSz.HAttr = w
		doc.BodySection().X().PgSz.WAttr = h
	}
}
func docxSetLandscape(doc *gooxml.Document) {
	doc.BodySection().X().PgSz.OrientAttr = wml.ST_PageOrientationLandscape
	h := doc.BodySection().X().PgSz.HAttr
	w := doc.BodySection().X().PgSz.WAttr

	hn := doc.BodySection().X().PgSz.HAttr.ST_UnsignedDecimalNumber
	wn := doc.BodySection().X().PgSz.WAttr.ST_UnsignedDecimalNumber

	if *hn > *wn {
		doc.BodySection().X().PgSz.HAttr = w
		doc.BodySection().X().PgSz.WAttr = h
	}
}

func docxProcessing(orientation, source, target string) {
	doc, err := gooxml.Open(source)
	if err != nil {
		log.Fatalf("Ошибка открытия документа: %s", err)
	}

	if strings.Contains(strings.ToLower(orientation), "landscape") == true {
		docxSetLandscape(doc)
	} else {
		docxSetPortrait(doc)
	}

	if err := doc.Validate(); err != nil {
		log.Fatalf("Ошибка валидации документа: %s", err)
	}

	doc.SaveToFile(target)
}

func xlsxSetPortrait(ss *spreadsheet.Workbook) {
	for _, sheet := range ss.Sheets() {
		var fitToHeightAttr uint32 = 999
		var fitToWidthAttr uint32 = 1
		if sheet.X() == nil {
			log.Fatalf("Не создан объект: %s", "sheet.X()")
		}
		if sheet.X().PageSetup == nil {
			log.Fatalf("Не создан объект: %s", "PageSetup")
		}
		fitToPageAttr := true
		sheet.X().SheetPr.PageSetUpPr.FitToPageAttr = &fitToPageAttr
		sheet.X().PageSetup.FitToHeightAttr = &fitToHeightAttr
		sheet.X().PageSetup.FitToWidthAttr = &fitToWidthAttr
		sheet.X().PageSetup.OrientationAttr = sml.ST_OrientationPortrait
	}
}
func xlsxSetLandscape(ss *spreadsheet.Workbook) {
	for _, sheet := range ss.Sheets() {
		var fitToHeightAttr uint32 = 999
		var fitToWidthAttr uint32 = 1
		if sheet.X() == nil {
			log.Fatalf("Не создан объект: %s", "sheet.X()")
		}
		if sheet.X().PageSetup == nil {
			log.Fatalf("Не создан объект: %s", "PageSetup")
		}
		fitToPageAttr := true
		sheet.X().SheetPr.PageSetUpPr.FitToPageAttr = &fitToPageAttr
		sheet.X().PageSetup.FitToHeightAttr = &fitToHeightAttr
		sheet.X().PageSetup.FitToWidthAttr = &fitToWidthAttr
		sheet.X().PageSetup.OrientationAttr = sml.ST_OrientationLandscape
	}
}
func xlsxProcessing(orientation, source, target string) {
	ss, err := spreadsheet.Open(source)
	if err != nil {
		log.Fatalf("Ошибка открытия документа: %s", err)
	}

	if strings.Contains(strings.ToLower(orientation), "landscape") == true {
		xlsxSetLandscape(ss)
	} else {
		xlsxSetPortrait(ss)
	}

	if err := ss.Validate(); err != nil {
		log.Fatalf("Ошибка валидации документа: %s", err)
	}

	ss.SaveToFile(target)
}
func main() {
	args := os.Args[1:]
	if len(args) < 3 {
		log.Fatalln("Должно быть три параметра, ориентация (landscape/portrait), конвертируемый файл и файл результата")
	}
	orientation := args[0]
	if strings.HasSuffix(strings.ToLower(args[1]), ".docx") == true {
		docxProcessing(orientation, args[1], args[2])
	} else if strings.HasSuffix(strings.ToLower(args[1]), ".xlsx") == true {
		xlsxProcessing(orientation, args[1], args[2])
	} else {
		log.Fatalln("Неправильный тип файла. Должен быть файл docx или xlsx")
	}
}
