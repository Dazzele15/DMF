#Worksheet_1 Dazzele Mae S Frias BSIT-2A
#Given Variable
age <- c(34, 28, 22, 36, 27, 18, 52, 39,
         42, 29, 35,31, 27, 22, 37, 34,
         19, 20, 57, 49, 50, 37, 46, 25,
         17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
#Given
#a. How many data points?
#Answer: 34
#b. Write the R code and its output.
#R CODE
age <- c(34, 28, 22, 36, 27, 18, 52, 39,
         42, 29, 35,31, 27, 22, 37, 34,
         19, 20, 57, 49, 50, 37, 46, 25,
         17, 37, 42, 53, 41, 51, 35, 24, 33, 41)
#2. Find the reciprocal for the values for age.
age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)
r_age <- 1/age
r_age
#3. Assign also new_age <-c(age,0,age). What happen to the new age?
age <- c(34,28,22,36,27,18,52,39,42,29,
         35,31,27,22,37,34,19,20,57,49,
         50,37,46,25,17,37,42,53,41,51,
         35,24,33,41)
new_age <-c(age,0,age)
new_age
#Answer: This will display two sets of the vector with the specific age in each set, with zero at the center.
#4. Sort the values for age.
sort(age)
#5. Find the minimum and maximum value for age.
min(age)
max(age)
#6. Given Variables
data <- c(2.4,2.8,2.1,2.5,2.4,
          2.2,2.5,2.3,2.5,2.3,
          2.4,2.7)
#a. How many data points?
  #Answer: 12
 # b. Write R code and its output.
data <- c(2.4,2.8,2.1,2.5,2.4,2.2,2.5,
          2.3,2.5,2.3,2.4,2.7)
#7.Generate a new vector for data where you double every value of data, what happened to the data?
data * 2
#Answer: The sum of the values of each data point in the vector.
#8. GENERATE A SEQUENCE FOR THE FOLLOWING SCENARIO
#a. How many data points from 8.1 to 8.4?
#Answer: 223
#b. Write the Rcode and its Output from 8.1 to 8.4
#8.1 Integers from 1 to 100.
seq(1:100)
#8.2 Numbers fom 20 to 60.
x <- 20:60
print(x)
#8.3 Mean of the numbers from 20 to 60.
mean(20:60)
#8.4 Sum of numbers from 51 to 91.
sum(51:91)
#8.5 Integers from 1 to 1000
seq(1:1000)
#C. For 8.5 find only maximum data points until 10.
max(1:10)
#9. Print a vector with the integers between 1 and 100 that are not only divisible by 3,5, and 7 using the filter option.
Filter(function(i) { all(i %% c(3,5,7) != 0) }, seq(100))
#10. Generate a sequence backwards of the Integers from 1 to 100.
#Write the R code and output
seq(from =100, to =1)
#11. List all the natural numbers below 25 that are multiples of 3 or 5. Find the sum of these multiples.
sum((1:25)[((1:25)%%3 == 0) | ((1:25)%%5 == 0)])
#a. How many data points from 10 to 11?
#Answer: 101 data points
#b.Write the R code and its output from 10 and 11.
data.frame(100:1)
#12.Enter this statement
{ x <- 0+ x + 5 }
#The closing brace ")" is error with the given statement
#13.
score <- c(72, 86, 92, 63, 88, 89, 91, 92, 75,75, 77)
score[2]
score[3]
#14. Create a vector a = c(1,2,NA,4,NA,6,7).
#a. Change the NA to 999 using the codes print (a,na.print="-999").
a = c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")
#b. Write the R code and its output. Describe the output.
a <- c(1,2,NA,4,NA,6,7)
print(a,na.print="-999")
#Describe the output: When comparing the first and second statements, "-999"was substituted for "NA."
#15.
class(x) <- "foo"
name = readline(prompt="Input your name: ")
age = readline(prompt="Input your age: ")
#print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)
# What is the output of the above code?
# Output
# > name = readline(prompt="Input your name: ")
#Input your name: Dazzele Mae S Frias
# > age = readline(prompt="Input your age: ")
#Input your age: 19
# > print(paste("My name is",name, "and I am",age ,"years old."))
# [1] "My name is Dazzele Mae S frias and I am 19 years old."
# > print(R.version.string)
# [1] "R version 4.2.1 (2022-06-23 ucrt)"

