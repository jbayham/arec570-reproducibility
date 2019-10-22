# AREC570 Reproducibility Exercise

This repository represents the *key* to a class exercise on reproducibility.  The objective of the project is to develop a fully automated process to read raw data, process the data, and produce a report (pdf, html).  The script compile_data.R (in the directory build/code) reads in the raw data and builds a dataset for the analysis step.  The intermediate dataset is saved in the analysis/input directory.  The analysis script then generates two figures and produces a latex table.  The main scripts in the project root automate the build process.  main.R is a script written in R and designed to be called from R.  The main_mac.sh is a shell script that can be called from within bash to build the project.  The windows main.bat file should accomplish the same task for a windows workflow using Stata and Latex.

************************

From R:

`source("main.R")`

From terminal:

`bash main_mac.sh`
