C1FIGURETEXLIST := sm-particle-table
C1FIGUREDIR := chapters/c1/figures

## all: Compile all the modules
all: figures main

## figures: Generate figures from code for the thesis
figures:
	$(foreach C1FIGURETEX, $(C1FIGURETEXLIST), pdflatex -output-directory ${C1FIGUREDIR} ${C1FIGUREDIR}/${C1FIGURETEX} &&) true

## main: Generate main body pdf of thesis
main:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

## clean: Delete all intermediate files in the compiling
clean:
	-@rm -f *.{aux,toc,dvi,lof,lot,log,lom,bbl,blg,ps,out,pdfsync} *~
	rm -f ${C1FIGUREDIR}/*.{aux,log,pdf}

help: Makefile
	@sed -n 's/^##//p' $<

.PHONY: help figures main all clean
