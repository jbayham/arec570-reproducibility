#This document controls the workflow of the project


####################################################
#Preliminaries
if(!("pacman" %in% rownames(installed.packages()))) install.packages("pacman")
library(pacman)
p_load(dplyr,ggplot2,readr,lubridate,stargazer,rmarkdown)




#####################################################
#Workflow

#Build dataset
source("build/code/compile_data.R")

#Run analysis to generate figures and tables
source("analysis/code/analysis.R")

#Calls a latex compiler.  Note that references in the tex document must be
#relative to the R directory
tinytex::pdflatex("report/report.tex")

#####################################################
#Render the Rmarkdown file
rmarkdown::render(input = "report/report_r.Rmd",
                  output_file = "manuscript_52-67.pdf",
                  output_format = "pdf_document")

# rmarkdown::render(input = "report/report_r.Rmd",
#                   output_file = "manuscript_52-67.docx",
#                   output_format = "word_document")

