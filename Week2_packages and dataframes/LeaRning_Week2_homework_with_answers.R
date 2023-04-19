#### LeaRning Week 2 Homework Questions ####

# Below are a set of questions that will test what you have learned from Week 2's lesson on data frames

# 1 ####
# Read in the LeaRning_week2_cfu_data.csv. Save it to an object called "dat".

dat <- read.csv("Week2_data frame basics/LeaRning_week2_cfu_data.csv")

# Viewing our data ####

# 2 ####
# Print the first three rows of the data set

head(dat, n = 3)

# 3 ####
# Print the last four rows of this data set

tail(dat, n = 4)

# 4 ####
# Determine how many "Control" values there are in the experimental.group variable (hint - use table)

table(dat$experimental.group)

# 5 ####
# Determine how many "Control" values there are in the experimental.group variable for the tissue spleen (hint - you can either subset the data first, or use table for two variables)

# the first way
spleen <- subset(dat, tissue == "spleen")
table(spleen$experimental.group)

# the second way
table(dat$tissue, dat$experimental.group)

# 6 ####
# print a unique list of tissues
unique(dat$tissue)

# modifying the data ####

# 7 ####
# Change the tissue variable into a character

dat$tissue <- as.character(dat$tissue)

# 8 ####
# Now change the values "spleen" in the "tissue" variable to "spl"

dat[which(dat$tissue == "spleen"), "tissue"] <- "spl"

# Subsetting data ####

# 9 ####
# Subset the data set so no.cfu is greater than 0. Save this to a new data set called dat.2.

dat.2 <- subset(dat, no.cfu > 0)

# 10 ####
# now subset the data so that the experimental group is Control, and the tissue is liver. Save this to a new object called dat.3

dat.3 <- subset(dat, experimental.group == "Control" & tissue == "liver")

# 11 ####
# subset the data so that the dilution factor is equal to 10 OR no.cfu is greater or equal to 20. Save this in a new object called dat.4

dat.4 <- subset(dat, dilution.factor == 10 | no.cfu >=20)

# 12 ####
# subset the data so that the tissue does not equal lung. Save this to a new object called dat.5

dat.5 <- subset(dat, tissue != "lung")
