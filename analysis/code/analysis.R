#This script produces figures and tables for the report

#Read in the compiled dataset
gap.temp <- read_csv(file = "analysis/input/data.csv")

#Generate line plot of Canada life expectancy over time
gap.temp %>% 
  dplyr::filter(country=="Canada") %>% 
  mutate(year=as.integer(year)) %>%
  ggplot(aes(x=year,y=lifeExp)) +
  geom_line()

ggsave("analysis/output/canada_le.pdf")

#Generate line plot of Canada gdp per capita over time
gap.temp %>% 
  dplyr::filter(country=="Canada") %>% 
  mutate(year=as.integer(year)) %>%
  ggplot(aes(x=year,y=gdpPercap)) +
  geom_line()

ggsave("analysis/output/canada_gdp.pdf")

#Estimate regression
life.model <- lm(data = gap.temp,lifeExp ~ gdpPercap)
summary(life.model)

#Output latex table
stargazer(life.model,title = "GDP on Life Expectancy",
          type="latex",out = "analysis/output/reg_out.tex")
