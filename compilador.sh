#!/bin/sh

latexmk -quiet -bibtex -pvc -f -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" principal.tex
