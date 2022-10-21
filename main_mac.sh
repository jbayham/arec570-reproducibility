#!/bin/bash
#Bash make file for compiling R and latex
Rscript  build/code/compile_data.R

#You can call Stata here instead of Rscript.  See: https://www.stata.com/manuals13/gsmc.pdf

Rscript  analysis/code/analysis.R

pdflatex  -output-directory report/ report/report.tex
pdflatex  -output-directory report/ report/report.tex
pdflatex  -output-directory report/ report/report.tex

