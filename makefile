all: compile.pdf clean

compile.pdf:
	pdflatex report.tex
	bibtex report.aux
	pdflatex report.tex
	pdflatex report.tex

clean:
	rm -f report.aux
	rm -f report.bbl
	rm -f report.out
	rm -f report.log
	rm -f report.blg
