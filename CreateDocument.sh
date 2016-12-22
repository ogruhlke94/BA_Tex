#!/bin/sh

rm *.acn
rm *.acr
rm *.alg
find . -name '*.aux' -delete
rm *.bbl
rm *.bcf
rm *.blg
rm *.glg
rm *.glo
rm *.gls
rm *.glsdefs
rm *.ist
rm *.lof
rm *.log
rm *.lol
rm *.lot
rm *.run.xml
rm *.tex.blg
rm *.toc
rm *.out
rm Appendix.tex
rm Chapters.tex
rm Parts.tex

for f in appendix/*.tex; do echo "\include{${f%.*}}" >> Appendix.tex; done
for f in chapters/*.tex; do echo "\include{${f%.*}}" >> Chapters.tex; done
for f in parts/*.tex; do echo "\include{${f%.*}}" >> Parts.tex; done

pdflatex Document.tex
biber Document
makeglossaries Document
pdflatex Document.tex
pdflatex Document.tex

rm *.acn
rm *.acr
rm *.alg
find . -name '*.aux' -delete
rm *.bbl
rm *.bcf
rm *.blg
rm *.glg
rm *.glo
rm *.gls
rm *.glsdefs
rm *.ist
rm *.lof
rm *.log
rm *.lol
rm *.lot
rm *.run.xml
rm *.tex.blg
rm *.toc
rm *.out
rm Appendix.tex
rm Chapters.tex
rm Parts.tex
