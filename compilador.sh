#!/bin/sh

clear
pdflatex $1.tex
#biber $1.bcf
bibtex $1.aux
makeindex $1.nlo -s nomencl.ist -o $1.nls
pdflatex $1.tex
pdflatex $1.tex
atril $1.pdf &
rm -f *.aux *.dvi *.bbl *.blg *.nlo *.nls *.lot *.lof *.toc *.out *.bak *.xml *.ilg *.log


