del *.acn
del *.acr
del *.alg
del /s *.aux
del *.bbl
del *.bcf
del *.blg
del *.glg
del *.glo
del *.gls
del *.glsdefs
del *.ist
del *.lof
del *.log
del *.lol
del *.lot
del *.run.xml
del *.tex.blg
del *.toc
del *.out
del Appendix.tex
del Chapters.tex
del Parts.tex

for %%i in (appendix/*.tex) do echo \include{appendix/%%~ni}>> Appendix.tex
for %%i in (chapters/*.tex) do echo \include{chapters/%%~ni}>> Chapters.tex
for %%i in (parts/*.tex) do echo \include{parts/%%~ni}>> Parts.tex
