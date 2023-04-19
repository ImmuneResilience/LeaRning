##################
##   leaRning   ##
##   HOMEWORK   ##
##    Week 5    ##
##################

library(plyr)
library(tidyverse)
library(ggfortify)

# Today we will be using the 'iris' data for our analyses.
# iris is one of R's built-in datasets, which means that everyone should have it already,
# and there is no need to import it.

# However, it is always good practice to manipulate a copy of your data. 
dat.iris <- iris

#First, have a look at your data using head().


##--1 Store the species name column into a vector variable. 
#     Call it iris.species


##--2 Remove the species column from dat. 
#     i.e. only keep the numerical columns of dat. 



##--3 Using dat.iris and the function prcomp(), create a PCR object.
#     Then, have a quick look at it by calling it. 



##--4 Store the x component of your PCA object into a new data.frame pca.dat. 
#     Hint, you can access it using the dollar sign $. 
#     Make sure to store it as a data.frame! 


##--5 Add back the previously saved species to your new data.frame


##--6 Graph your PCA plot using ggplot



##--7 Using autoplot from the package ggfortify, plot your PCA.
#     You will need your PCA object and your pca.dat.
#     Make sure to load the vectors. 








# ---------------- HEATMAPS -------------------------------------------------------------------

# In this section, we will test your ability to investigate the help page and play around with some
# plotting options using the volcano dataset. 

# The volcano dataset is an R built-in dataset, which means that there is no need to import it. 
# You can simply call it by typing volcano, like so: 
volcano <-  volcano
# The volcano dataset contains the topographic information of Maunga Whau, one of the 50 volcanos
# in the Auckland volcanic field. The rows represent gridlines running east to west, and the columns gridlines running North to South. The values in the cells represent elevation above sea level.
# What better way to use a heatmap than to graph a volcano's topographic information?


#--1: Have a look at the dataset. What class is it? 


# It is likely in the right format to plot it straight away using base R! 
#--2: Make a heatmap of the volcano dataset using base R: 



# If it looked terrible, it's because clustering is not at all useful for topographic data! 
#--3: Try again with base R, this time by disabling all forms of clustering.



# At this point, you might be seeing something vaguely familiar. 
# Perhaps you can recognize the volcano's center? But it isn't quite right isn't it! 

#--4: This time, use pheatmap to plot the volcano dataset. 
# Make sure to disable all clustering methods (hint: again, for both columns and rows.)
# Have a look at the documentation ?pheatmap if you are not sure how to do it. 



# That looks much better! 
#--5: Try to make it more attractive using some of the pheatmap function options. 
# Each matrix cell in the volcano dataset contains the elevation for a 10m by 10m square.
# a) Modify the cells so that they have the same height and width - you might have to play around with the values. 
# b) Find a way to remove the grid in your graph. 





# Fantastic! 

#---------- CHALLENGE ----------------# 

# It was easy for us to use the volcano dataset, as we did not have to touch it at all. 
# In class, we converted our dataset to a matrix in order to use base R and pheatmap. 
# This time, we will be converting our matrix into a long format data.frame in order to use it 
# with ggplot! 

# To help you, I will show you how your data should look like, but you will have to find your own method 
# to achieve this particular format. 

#--1: Have a look at the dimensions of volcano: 
  

#--2: Find a way to have your data organized in the following way: 

#     x   y   z
#1    1   1  100
#2    2   1  101
#3    3   1  102
#4    4   1  103
#5    5   1  104
#6    6   1  105
#7    7   1  105
#8    8   1  106
#.    .   .   .
#.    .   .   .  
#86   86  1   97
#87   87  1   97
#88   1   2   100
#89   2   2   101

#etc... 

# Above is a snippet of the data.frame that you should have. 
# It should have 5307 rows and 3 columns. 
# The x column should look like this: 1,2,3,4,(..),86,87,1,2,3,4,(..),86,87,1,2,3,4 etc.. 
# The y column should look like this: 1,1,1,1,(..), 1, 1,2,2,2,2,(..), 2, 2,3,3,3,3 etc.. 
# The z column is the value in each cell of the volcano matrix. 

# HINTS: Calling the matrix as a vector should help get the z column. For the x and y columns, as.vector(),
#        replicate() and sort() are your best friends, but you can be creative, there are all sorts 
#        of ways to achieve the above data.frame! 








#--3: Now that you have your beautiful data.frame, plot its heatmap using ggplot()! 
#     Label the elevation legend and use the 'plasma' scale_fill like we did in class. 




