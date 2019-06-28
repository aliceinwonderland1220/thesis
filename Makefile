all:
	pdflatex main
	bibtex main
	pdflatex main
	pdflatex main

clean:
	@rm -rf main.aux main.dvi main.log main.out main.bak main.blg main.bbl main.toc main.lof main.lot
