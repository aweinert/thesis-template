.PHONY: documentation.pdf

documentation.pdf:
	pdflatex -interaction=nonstopmode documentation.tex
	bibtex documentation
	pdflatex -interaction=nonstopmode documentation.tex
	pdflatex -interaction=nonstopmode documentation.tex
