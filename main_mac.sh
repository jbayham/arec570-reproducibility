#!/bin/bash
#Bash make file for compiling R and latex
Rscript --default-packages=tidyverse build/code/compile_data.R

#You can call Stata here instead of Rscript.  See: https://www.stata.com/manuals13/gsmc.pdf

Rscript --default-packages=tidyverse,stargazer,stats analysis/code/analysis.R

pdflatex  -output-directory report/ report/report.tex
pdflatex  -output-directory report/ report/report.tex
pdflatex  -output-directory report/ report/report.tex

