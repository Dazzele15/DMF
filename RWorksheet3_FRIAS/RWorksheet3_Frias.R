#Worksheet3_FRIAS

#1.	There is a built-in vector LETTERS contains the uppercase letters of the alphabet and letters which contains the lowercase letters of the alphabet.
LETTERS <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")
letters	<- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")


#Based on the above vector LETTERS:
  #a.	You need to produce a vector that contains the first 11 letters.

LETTERS <- c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z")

ALETTERS <- LETTERS[1:11]
ALETTERS


#b.	Produce a vector that contains the odd numbered letters.

letters	<- c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z")

ODDLTTRS <- letters [1:26 %% 2 == 1]
ODDLTTRS


#c.	Produce a vector that contains the vowels

VOWELLTTRS <- LETTERS [c(1,5,9,15,21)]
VOWELLTTRS

#Based on the above vector letters:
  #d.	Produce a vector that contains the last 5 lowercase letters.
 
vowelLTTRS <- letters [c(1,5,9,15,21)]
vowelLTTRS

#e.	Produce a vector that contains letters between 15 to 24 letters in lowercase.

  lttrs <- letters[15:24]
  lttrs

 # 2.	Create a vector with the average temperatures in April for Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City. The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees.
  
   #a.	What is the R code and its result for creating a character vector for the city/town of Tuguegarao City, Manila, Iloilo City, Tacloban, Samal Island, and Davao City? Name the object as city. The names should follow the same order as in the instruction.
       city <- c("Tuguegarao City", "Manila", "Iloilo City", "Taclobna", "Samal Island", "Davao City")
       city
  
   #b.	The average temperatures in Celcius are 42, 39, 34, 34, 30, and 27 degrees. Name the object as temp. Write the R code and its output. Numbers should also follow what is in the instruction.
      temp <- c(42, 39, 34, 34, 30, 27)
      temp

  #c.	Associate the temperature temp with the city by using names() function. What is the R code and its result?
      names(temp) <- city
      temp
      
  #e. From the answer in d, what is the content of index 5 and index 6? What is its R code?
      Cities <- temp [5:6]
      Cities

 #Using Matrices 
      
#2.	Create a matrix of one to eight and eleven to fourteen with four columns and three rows.
  #a.	What will be the R code for the #2 question and its result?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a

  #b.Multiply the matrix by two. What is its R code and its result?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      b <- a*2
      b
      
  #c.What is the content of row 2? What is its R code?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a
      rw2 <- c(a[2,1], a[2,2], a[2,3], a[2,4])
      rw2
      
  #d.	What will be the R code if you want to display the column 3 and column 4 in row 1 and row 2? What is its output?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a
      rw1 <- c(a[1,3], a[1,4], a[2,3], a[2,4])
      rw1

      
  #e.What is the R code is you want to display only the columns in 2 and 3, row 3? What is its output?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a
      rw3 <- c(a[3,2], a[3,3])
      rw3

  #f.	What is the R code is you want to display only the columns 4? What is its output?         
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a
      rw4 <- c(a[1,4], a[2,4], a[3,4])
      rw4

 #g.	Name the rows as isa, dalawa, tatlo and columns as uno, dos, tres, quatro
 # for the matrix that was created in b.‘. What is its R code and corresponding output?
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
      a
      dimnames(a) <- list(c("isa", "dalawa", "tatlo"), c("uno", "dos", "tres", "quatro"))
      a

#h.	From the original matrix you have created in a, reshape the matrix by assigning a new dimension with dim(). New dimensions should have 2 columns and 6 rows. What will be the R code and its output?           
      a <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
    #Warning in matrix(1:8, 11:14, nrow = 3, ncol = 4): data: length [8] is not a submultiple or multiple of the number of rows [3]
      a
      
      d <- c(1,2,3,4,5,6,7,8,11,12,13,14)
      d
      
      e <- matrix(d, nrow = 6, ncol = 2)
      e
      
      dim(e)
      
 # Using Arrays
  #3. An array contains 1, 2, 3, 6, 7, 8, 9, 0, 3, 4, 5, 1
    #a.	Create an array for the above numeric values. Each values will be repeated twice What will be the R code if you are to create a three-dimensional array with 4 columns and 2 rows. What will be its output
      f <- c(1,2,3,6,7,8,9,0,3,4,5,1)
      f
      
      y <- array(rep(f,2), dim = c(2,4,3))
      y

    #b.	How many dimensions do your array have?
      dim(y)
    
    #c.	Name the rows as lowercase letters and columns as uppercase letters starting from the A. The array names should be “1st-Dimensional Array”, “2nd-Dimentional Array”, and “3rd-Dimensional Array”. What will be the R codes and its output?
      f <- c(1,2,3,6,7,8,9,0,3,4,5,1)
      f
      y <- array(rep(f,2), dim = c(2,4,3))
      y
      dimnames(y) <- list(letters[1:2], LETTERS[1:4], c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Domensional Array"))
      y
      