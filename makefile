MAIN=main
CONTENTS := $(wildcard contents/*)

all: $(MAIN).pdf $(MAIN).tex abstract.tex $(MAIN).cfg CONTENTS
	xelatex.exe $(MAIN).tex
	bibtex.exe $(MAIN).aux
	xelatex.exe $(MAIN).tex
	xelatex.exe $(MAIN).tex

clean:
	rm -f $(MAIN).bbl $(MAIN).blg $(MAIN).out $(MAIN).toc *.log *.aux
