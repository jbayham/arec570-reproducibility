#This script compiles data on gdp and life expectancy 

#complete the directory structure
dir.create("analysis/input")
dir.create("analysis/output")

#Read in data from source csv
le.df <- read_csv(file = "build/input/le_52-67.csv")
gdp.df <- read_csv(file = "build/input/gdp_52-67.csv")

#Join data into a single dataframe and calculate gdp per capita
analysis.df <- inner_join(le.df,
                          gdp.df) %>%
  mutate(gdpPercap = gdp/pop)


write_csv(analysis.df,path = "analysis/input/data.csv")  
