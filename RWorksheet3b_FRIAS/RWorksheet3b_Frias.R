#Frias_Worksheet3b
#BSIT2-A

#1. Create a data frame using the table below
  #a. Write the codes

Respondents <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
Sex <- c(2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2, 2, 2, 1, 2)
F_occupation <- c(1, 3, 3, 3, 1, 2, 3, 1, 1, 1, 3, 2, 1, 3, 3, 1, 3, 1, 2, 1)
Prsn_Home <- c(5, 7, 3, 8, 5, 9, 6, 7, 8, 4, 7, 5, 4, 7, 8, 8, 3, 11, 7, 6)
Sblng_Schl <- c(6, 4, 4, 1, 2, 1, 5, 3, 1, 2, 3, 2, 5, 5, 2, 1, 2, 5, 3, 2)
TypeHouses <- c(1, 2, 3, 1, 1, 3, 3, 1, 2, 3, 2, 3, 2, 2, 3, 3, 3, 3, 3, 2)

q <- data.frame(Respondents, Sex, F_occupation, Prsn_Home, 
                Sblng_Schl, TypeHouses)
q

#b.Describe the data. Get the structure or the summary of the data

summary(q)

#c. Is the mean number of siblings attending is 5?
#Answer: NO, the mean num is 2.95

#d. Extract the 1st two rows and then all the columns using the subsetting functions.
#Write the cods andits output.

 E <- subset(q[1:2, 1:6, drop = FALSE])
 E

 #e.Extract 3rd and 5th row with the 2nd and 4th column. 
  #Write the codes and its output.
 
  E <- subset(q[c(3,5), c(2,4)])
  E

#f. Select the variable types of houses then store the vector that results as type_houses.
  #Write the codes
  
  TypeofHouses <- q$TypeHouses
  TypeofHouses

#g. Select only all Males respondent that their father occupation was farmer.
  #Write the codes and its output
  
  Farmer <- subset(q[c(1:20), c(2,3)])
  Farmer

  Male <- Farmer[q$F_occupation == '1',] 
  Male

#h. Select only all females respondent that have greater than or equal to 5 number of siblings attending school.
   #Write the codes and its output.
  
  Frspndnts <- subset(q[c(1:20), c(2,5)])
  Frspndnts
  
  F <- Frspndnts[q$Sblng_Schl >= '5',]
  F

#2.Write a program to create an empty data frame. Using the following codes.
  
  df = data.frame(Ints=integer(),
                  Doubles=double(), Characters=character(),
                  Logicals=logical(),
                  Factors=factor(),
                  stringsAsFactors=FALSE)
  print("Structure of the empty dataframe:")
  print(str(df))
  
#a. Describe the results.
  # The data frame has no columns, 5 variables and 0 levels. all in all "NULL"
  
#3. Interpret the graph
  
  Sntmnts_of_twwt_perDay <- print("I interpret it that the sentiments of tweet per day of Donal Trump shows that lots of Negative and less in Nuetral")
  Sntmnts_of_twwt_perDay
  