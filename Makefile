
.PHONY: all pdf FORCE_MAKE

all pdf:: main.pdf


%.pdf: %.tex FORCE_MAKE
	#latexmk -pdf $<
	latexmk -f -pdf $< --silent

paper.pdf:: main.tex

clean:
	latexmk -C -quiet

open: all
	open main.pdf
