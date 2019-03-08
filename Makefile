.PHONY: documentation.pdf

documentation.pdf:
	pdflatex documentation.tex
	bibtex main
	pdflatex documentation.tex
	pdflatex documentation.tex
