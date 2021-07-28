.PHONY: all clean watch open

PAPER=main

all:
	latexmk -pdf -halt-on-error $(PAPER).tex
clean:
	latexmk -c
cleanall:
	latexmk -C
watch:
	latexmk -pvc -pdf -halt-on-error $(PAPER).tex
open:
	xdg-open $(PAPER).pdf
images:
	pdftoppm $(PAPER).pdf ./img/$(PAPER) -png
lint:
	chktex main.tex
spellcheck:
	textidote

