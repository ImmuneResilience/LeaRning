### Week 1 homework questions ####

# Below are a set of questions that will test what you have learned from this week's lesson so far.
# After the set of questions, there will be a small exercise followed by a challenge!

## Create a new project called "LeaRning_homework" to store your scripts/data


## Create a numeric vector containing ten elements



## Check the class of your vector



## print the fourth, and eighth element of your numeric vector



## Convert your numeric vector into class "character"



## Check the new class of your vector



## print elements 5-10 of your vector



## create a new vector of type character containing at least two elements



## convert the character vector to class "factor"



## print out the factor, note the order of the levels



## check that the conversion has worked - check the class 



## look at the help documentation for the function called relevel()


## using the relevel() function, change the first level for your factor



## now create a list containing 1) your original numeric vector 2) the numeric vector converted to class character and 3) the character vector you converted to class factor



## print the third element of your list


#### EXERCICE ####

# Let's make a data frame with various weights for dogs, cats, and birds.
# The weights of our friendly pets were measured from our local Pet Shop. 

# Run the four lines below to create the dataset. 
cat.weights <- c(15, 12, 9, 11, 9, 7, 5, 10)
dog.weights <- c(20, 25, 21, 23, 22, 28, 34, 23)
bird.weights <- c(2, 3, 4, 3, 6, 4, 50, 1) 
weights <- data.frame(Cats = cat.weights, Dogs = dog.weights, Birds = bird.weights)

# Those are very heavy birds. Let's conducts some analyses! If all goes well, the differences between each group should be significant. 

# Task 1: Conduct a t.test for all three weight groups. That is, we are trying to compare Cats vs Dogs, Cats vs Birds and finally Dogs vs Birds. 




# Did you find any strange results? 
# Oh that's why! I made a mistake when entering the bird weights, I added an extra zero to one of the values. I doubt that our local Pet shop sells Ostriches! 

# Task 2: Without modifying the initial code for the bird.weights or creating a new data.frame, rectify my mistake by changing it to its originally intended value.
# Hint: just like you can assign objects values, you can also assign items in a vector new values using the navigation skills we learned above. 
# For example, if I had a vector x, with the values 1,2,3,4,5 I could change the third value to 6 using this code:

x <- c(1:5)
x[3] <- 6 # Same thing as x[3] = 6
x

# Now, have a go at tackling Task 2! 








######### CHALLENGE #########

# A recent breakthrough in zoology and physics found that the sum of the weights of any random cat, dog and bird added together can
# be used to find the critical mass of pure Uranium-235 required for a chain reaction to spontaneously occur.  
# This can be found using the very complicated formula ((((x+(x+1))+9)/2)-x)*3

#Run the three lines below to create the dataset (it uses the dataset from the previous exercise). 
extra.column <- c(0,0,0,0,0,0,0,0)
weights <- data.frame(Cats = cat.weights, Dogs = dog.weights, Birds = bird.weights, Critical_Mass = extra.column)
weights

# Hint: Vectors can be added and multiplied like you would for any numeric variables, like so:  
a <- c(2,2,2)
b <- c(4,4,4)
c <- a + b 
c
# Once you have added the vectors for Cats, Dogs and Birds together into a new vector variable, use the 
#formula above to populate the extra_column with the Critical Mass of Uranium-235.










# Fantastic! 


