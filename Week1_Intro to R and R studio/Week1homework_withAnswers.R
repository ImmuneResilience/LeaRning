### Week 1 homework questions ####

## Create a new project called "LeaRning_homework" to store your scripts/data


## Create a numeric vector containing ten elements

num.vector <- c(10,20,30,40,50,60,70,80,90,100)

## Check the class of your vector

class(num.vector)

## print the fourth, and eighth element of your numeric vector

num.vector[c(4,8)]

## Convert your numeric vector into class "character"

char.vector <- as.character(num.vector)

## Check the new class of your vector

class(char.vector)

## print elements 5-10 of your vector

char.vector[5:10]

## create a new vector of type character containing at least two elements

fruit <- c("apples","oranges","bananas","pears")

## convert the character vector to class "factor"

fruit <- as.factor(fruit)

## print out the factor, note the order of the levels

fruit

## check that the conversion has worked - check the class 

class(fruit)

## look at the help documentation for the function called relevel()


## using the relevel() function, change the first level for your factor

fruit <- relevel(fruit, ref = "bananas")

## now create a list containing 1) your original numeric vector 2) the numeric vector converted to class character and 3) the character vector you converted to class factor

mylist <- list(num.vector,char.vector,fruit)

## print the third element of your list

mylist[[3]]



###### EXERCISE ######

# Let's make a data frame with various weights for dogs, cats, and birds.
# The weights of our friendly pets were measured from our local Pet Shop. 

# Run the four lines below to create the dataset. 
cat.weights <- c(15, 12, 9, 11, 9, 7, 5, 10)
dog.weights <- c(20, 25, 21, 23, 22, 28, 34, 23)
bird.weights <- c(2, 3, 4, 3, 6, 4, 50, 1) 
weights <- data.frame(Cats = cat.weights, Dogs = dog.weights, Birds = bird.weights)

# Those are very heavy birds. Let's conducts some analyses! If all goes well, the differences between each group should be significant. 

# Task 1: Conduct a t.test for all three weight groups. That is, we are trying to compare Cats vs Dogs, Cats vs Birds and finally Dogs vs Birds. 

t.test(weights$Cats, weights$Dogs)
t.test(weights$Cats, weights$Birds)
t.test(weights$Dogs, weights$Birds)

t.test(weights[,1], weights[,2])
t.test(weights[,1], weights[,3])
t.test(weights[,2], weights[,3])

# Did you find any strange results? 

# Oh that's why! I made a mistake when entering the bird weights, I added an extra zero to one of the values. I doubt that our local Pet shop sells Ostriches! 

# Task 2: Without modifying the initial code for the bird.weights or creating a new data.frame, rectify my mistake by changing it to its originally intended value. 

# Hint: just like you can assign objects values, you can also assign items in a vector new values using the navigation skills we learned above. 
# For example, if I had a vector x, with the values 1,2,3,4,5 I could change the third value to 6 using this code:

x <- c(1:5)
x[3] <- 6 # Same thing as x[3] = 6
x


######### CHALLENGE #########

# A recent breakthrough in zoology and physics found that the sum of the weights of any random cat, dog and bird added together can
# be used to find the critical mass of pure Uranium-235 required for a chain reaction to spontaneously occur.  
# This can be found using the very complicated formula ((((x+(x+1))+9)/2)-x)*3

#Run the three lines below to create the dataset. 
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

x <- weights$Cats + weights$Dogs + weights$Birds
x

x <- ((((x+(x+1))+9)/2)-x)*3

weights$Critical_Mass <- x
weights

# Fantastic! 

