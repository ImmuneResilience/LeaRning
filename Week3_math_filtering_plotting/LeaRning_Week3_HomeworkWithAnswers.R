#### LeaRning Week 3 Homework Questions ####

# Let's see if we can apply our skills to a brand new data set!  You will need to download the mice_weights.csv data set on teams under Resources/Rdata

# This data set contains information on either male or female mice that were fed either two experimental diets A or B.

# Read in your new data set, call it dat

dat <- read.csv("examples/example_data/mice_weights.csv")

# Data Wrangling ####

# Q1 ####
# Explore the structure of your data set using any of the strategies we have learned. You will need to get a feel for what the column names are, how many observations there are, and what kind of values are stored in each variable.

head(dat)

table(dat$Sex)

table(dat$Sex, dat$Diet)

# Q2 ####
# How many Females are there in the data set?

table(dat$Sex)

length(dat$Sex[dat$Sex == "F"])

# There are 425 Females

# Q3 ####
# How many males are there in the data set?
length(dat$Sex[dat$Sex == "M"])

# There are 421 Males

# Q4 ####
# How many females were on diet A vs B?

# one way
f <- subset(dat, Sex == "F")
table(f$Diet)

# another way
table(dat$Diet[dat$Sex == "F"])

# There are 225 females on Diet B, and 200 on Diet A

# Statistics ####

# We can perform a few different types of comparisons using this data set.  Let's start with comparing the body weight of female to male mice using a t test (t.test).

# Q5 ####
# Perform a t-test comparing the bodyweight of female to male mice. Save the result to an object called sex.test

sex.test <- t.test(Bodyweight ~ Sex, data = dat)

# What is the significance of your result?

sex.test$p.value

# Q6 ####
# How about the body weight of diet A vs B mice? Save this to an object called diet.test

diet.test <- t.test(Bodyweight ~ Diet, data = dat)

# What is the significance of your result?

diet.test$p.value

# Q7 ####
# Compare the body weight of Diet A vs B mice for males and females separately. Call these tests f.test and m.test. Hint: you will first have to subset your data

# subset your data
# one way
dat_sex <- split(dat, dat$Sex)

list2env(dat_sex,globalenv())

# another way
Fem <- subset(dat, Sex == "F")
Male <- subset(dat, Sex == "M")

# perform the tests
f.test <- t.test(Bodyweight ~ Diet, data = Fem)
f.test

m.test <-  t.test(Bodyweight ~ Diet, data = Male)
m.test

# Plotting ####
# now that we have a sense of the statistical trends, let's plot our results using the ggplot2 package. First load your package using library().

library(ggplot2)

# Q8 ####
# Use qplot to plot the body weights by sex
qplot(Sex, Bodyweight, data = dat, geom = "boxplot")

# Q9 ####
# Use qplot to plot the body weights of male-A, female-A, male-B, and female-B. Hint: You will first need to make a new feature that combines the Sex and Diet variables. you can do this using the paste() function.

dat$sex_diet <- paste(dat$Sex, dat$Diet)

qplot(sex_diet, Bodyweight, data = dat, geom = "boxplot")

# Q10 ####
# Now, let's move on to ggplot. Let's try to generate the same plot using the facet_wrap. Generate a boxplot of these data by placing diet on the x-axis, and facet wrap your data by sex. Save your plot to an object called "p".

p <- ggplot(dat, aes(x = Diet, y = Bodyweight)) +
  geom_boxplot() +
  facet_wrap(~Sex)

p

# Q11 ####
# Now build up your ggplot by overlaying data points

p <- p + geom_point()
p

# Great! That's it for this week :)