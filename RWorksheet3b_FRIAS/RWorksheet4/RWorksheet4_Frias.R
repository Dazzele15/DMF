#Frias_Worksheet4
#BSIT2-A

#1.The table shows the data about shoe size adn height. Create a data frame..
 #Describe the data.

S_size <- c(6.5, 9.0, 8.5, 8.5, 10.5, 7.0, 9.5, 9.0, 13.0, 7.5, 10.5, 8.5, 12.0, 10.5,
            13.0, 11.5, 8.5, 5.0, 10.0, 6.5, 7.5, 8.5, 10.5, 8.5, 10.5, 11.0, 9.0, 13.0)
Height <- c(66.0, 68.0, 64.5, 65.0, 70.0, 64.0, 70.0, 71.0, 72.0, 64.0, 74.5, 67.0, 71.0, 
            71.0, 77.0, 72.0, 59.0, 62.0, 72.0, 66.0, 64.0, 67.0, 73.0, 69.0, 72.0, 70.0,
            69.0, 70.0)
Gender <- c("F", "F", "F", "F", "M", "F", "F", "F", "M", "F", "M", "F", "M", "M", "M", 
            "M", "F", "F", "M", "F", "F", "M", "M", "F", "M", "M", "M", "M")

Shoe <- data.frame(S_size, Height, Gender)
Shoe

#1b. Find the mean of shoe size and height of the respondents. Copy the codes and result.
mean(S_size)
mean(Height)

#1c. Is there a relationship between Shoe size and height? Why?
#Maybe, because the smaller the shoe size the height seems a bit low, and as the shoe size increase the height also get higher.

#2. Construct character vector months to a factor with factor() and assign the result to  factor_m0nths_vector. 
#Print out factor_months_vector and assert thet R prints out the factor levels below the actual values.


