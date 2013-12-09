TEX = $(notdir $(wildcard *.tex))
PDF = $(patsubst %.tex, %.pdf, $(TEX))

.PHONY:all clean

all:TuringPPT
TuringPPT:
	xelatex $@
	bibtex $@
	xelatex $@
	xelatex $@
	[ -d pdf ] || mkdir pdf
	mv $@.pdf pdf/

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.synctex.gz *.bbl *.blg
	
