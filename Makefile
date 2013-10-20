TEX = $(notdir $(wildcard *.tex))
PDF = $(patsubst %.tex, %.pdf, $(TEX))

.PHONY:all clean

all:$(PDF)

%.pdf:%.tex
	xelatex $<
	xelatex $<
	[ -d pdf ] || mkdir pdf
	mv $@ pdf/

clean:
	rm -f *.log *.nav *.aux *.out *.snm *.toc *.synctex.gz
	
