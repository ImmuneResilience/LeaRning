#### Homework Week 4 ####

#### SECTION 1: Re-shaping data with tidyr ####

## load the tidyverse package (install it first, if required)

library(tidyverse)

## install and load the gapminder package - this package contains a dataset called "gapminder", which describes socio-economics for each country. It won't appear as an object in the global environment, but will be available as an in-built dataset once the package is loaded

install.packages("gapminder")

library(gapminder)

## explore the gapminder dataset using the functions you have learned so far

head(gapminder)

## how many rows and columns are there?

dim(gapminder)

## what type of data is contained in each column?

str(gapminder)

## how many countries are included in this dataset?

length(unique(gapminder$country))

## what is the most recent year that data was collected?

max(gapminder$year)

## which columns represent the ID variables, and which represent the measured variables?

## using the pivot_longer function, create a new object called "gapminder_long" by melting this data by the measured variable columns 

gapminder_long <- gapminder %>%
  pivot_longer(
    lifeExp:gdpPercap,
    names_to = "measure",
    values_to = "value"
  )

## using the pivot_wider function, create a new object by widening the **original** gapminder data, so that there is only one row for each country

gapminder_wide <- gapminder %>%
  pivot_wider(
    names_from = year,
    values_from = c(lifeExp, pop, gdpPercap)
  ) 

## this time, use the pivot_wider function to widen the "gapminder_long" object back to it's original form, with individual columns for "lifeExp", "pop" and "gdpPercap"

gapminder_original <- gapminder_long %>%
  pivot_wider(
    names_from = measure,
    values_from = value
  )


#### SECTION 2: Joining data ####

## Read in the .csv file called "gapminder_2012.csv"

df <- read.csv("gapminder_2012.csv")

## load the plyr package 

library(plyr)

## Join the 2012 data with the existing gapminder data

## think about the type of join you want to use - left? full? inner? have a go and see what happens 

## provide one example

gm <- plyr::join(gapminder,
                 df,
                 by = c("country","continent","year","lifeExp","pop","gdpPercap"),
                 type = "full",
                 match = "first")

## extra step if you feel like it, re-order the rows of the new merged data frame by country, and then year

gm <- arrange(gm, country, year)


#### SECTION 3: Summarising and plotting data ####

## Use the ddply function to calculate the mean and standard error of gdpPercap for each **continent* 

## hint* you will need to re-create the standard error function we used in the lesssion

standard.error <- function(x) sd(x) / sqrt(length(x)) 

dat.sum <- ddply(gm, 
                 .(continent),
                 summarise,
                 average = mean(gdpPercap),
                 st.err = standard.error(gdpPercap))
head(dat.sum)

## using ggplot, create a barplot for each country, showing the mean and error bars for gdpPercap, with a facet wrap by continent

p <- ggplot(dat.sum, aes(x = continent, y = average, fill = continent)) +
  geom_bar(color='black',stat='identity', position ='dodge') + 
  geom_errorbar(aes(ymin= average, ymax=average + st.err),position = 'dodge') 

## which are the richest/poorest continents?!







