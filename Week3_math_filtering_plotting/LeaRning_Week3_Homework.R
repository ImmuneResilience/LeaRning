#### LeaRning Week 3 Homework Questions ####

# Let's see if we can apply our skills to a brand new data set!  You will need to download the mice_weights.csv data set on teams under Resources/Rdata

# This data set contains information on either male or female mice that were fed either two experimental diets A or B.

# Read in your new data set, call it dat



# Data Wrangling ####

# Q1 ####
# Explore the structure of your data set using any of the strategies we have learned. You will need to get a feel for what the column names are, how many observations there are, and what kind of values are stored in each variable.





# Q2 ####
# How many Females are there in the data set?






# Q3 ####
# How many males are there in the data set?





# Q4 ####
# How many females were on diet A vs B?






# Statistics ####

# We can perform a few different types of comparisons using this data set.  Let's start with comparing the body weight of female to male mice using a t test (t.test).

# Q5 ####
# Perform a t-test comparing the bodyweight of female to male mice. Save the result to an object called sex.test





# What is the significance of your result?




# Q6 ####
# How about the body weight of Diet A vs. B mice? Save this to an object called diet.test




# What is the significance of your result?




# Q7 ####
# Compare the body weight of Diet A vs. B mice for males and females separately. Call these tests f.test and m.test. Hint: you will first have to subset your data







# Plotting ####
# now that we have a sense of the statistical trends, let's plot our results using the ggplot2 package. First load your package using library().




# Q8 ####
# Use qplot to plot the body weights by sex





# Q9 ####
# Use qplot to plot the body weights of male-A, female-A, male-B, and female-B. Hint: You will first need to make a new feature that combines the Sex and Diet variables. you can do this using the paste() function.





# Q10 ####
# Now, let's move on to ggplot. Let's try to generate the same plot using the facet_wrap. Generate a boxplot of these data by placing diet on the x-axis, and facet wrap your data by sex. Save your plot to an object called "p".






# Q11 ####
# Now build up your ggplot by overlaying data points





# Great! That's it for this week :)