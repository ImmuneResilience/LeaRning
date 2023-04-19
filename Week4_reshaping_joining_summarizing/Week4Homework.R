#### Homework Week 4 ####

#### SECTION 1: Re-shaping data with tidyr ####

## load the tidyverse package (install it first, if required)



## install and load the gapminder package - this package contains a dataset called "gapminder", which describes socio-economics for each country. It won't appear as an object in the global environment, but will be available as an in-built dataset once the package is loaded



## explore the gapminder dataset using the functions you have learned so far



## how many rows and columns are there?



## what type of data is contained in each column?



## how many countries are included in this dataset?



## what is the most recent year that data was collected?


## which columns represent the ID variables, and which represent the measured variables?

## using the pivot_longer function, create a new object called "gapminder_long" by melting this data by the measured variable columns 



## using the pivot_wider function, create a new object by widening the **original** gapminder data, so that there is only one row for each country



## this time, use the pivot_wider function to widen the "gapminder_long" object back to it's original form, with individual columns for "lifeExp", "pop" and "gdpPercap"




#### SECTION 2: Joining data ####

## Read in the .csv file called "gapminder_2012.csv"


## load the plyr package 



## Join the 2012 data with the existing gapminder data

## think about the type of join you want to use - left? full? inner? have a go and see what happens 

## provide one example



## extra step if you feel like it, re-order the rows of the new merged data frame by country, and then year



#### SECTION 3: Summarising and plotting data ####

## Use the ddply function to calculate the mean and standard error of gdpPercap for each **continent* 

## hint* you will need to re-create the standard error function we used in the lesssion



## using ggplot, create a barplot for each country, showing the mean and error bars for gdpPercap, with a facet wrap by continent

 

## which are the richest/poorest continents?!



