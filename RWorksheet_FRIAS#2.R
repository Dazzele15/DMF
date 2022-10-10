install.packages("rmarkdown")
install.packages("tinytex")

RWorksheet_Frias2.R

#1.Create a vector using : Operator
 #a. Sequence from -5 to 5. Write the R code and its output. Describe its output.
 seq(-5:5)
 
#b. x <- 1:7. What will be the value of x?
 x <- 1:7
 x
 
#2. Create a vector using seq() function.
  #a. seq(1,3, by =0.2) # specify step size. Write the R code and its output. 
    #Describe the output.
 seq(1,3,by = 0.2)
 
#3. Factory has a census of its workers, There are 50 workers in total.
 Wrkrs_age <- c(34,28,22,36,27,18,52,39,42,29,35,31,27,22,37,
            34,19,20,57,49,50,37,46,25,17,37,43,53,41,51,
            35,24,33,41,53,40,18,44,38,41,48,27,39,19,30,
            61,54,58,26,18)
 
#a. Access the 3rd element, what is the  value?
 Wrkrs_age[3]
 
#b. Access the 2nd and 4th element, what is the  values?
 Wrkrs_age[2]
 Wrkrs_age[4]
 
#c. Access all but the 1st element is not included. Write the R code and its output.
 Wrkrs_age[2:50] 
 
#4. Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x.
 names <- c("first"=3, "second"=0, "third"=9)
 names
 
#a.Print the results. Then access x[c("first", "third")]. Describe the output.
 names [c("first", "third")]
 
#5. Create a sequence x from -3:2
 x <- c(-3:2)
 x
 
#a.Modify 2nd element and change it to 0; Describe the output.
 x[2] <- 0
 x
 
#6.The following data shows the diesel fuel purchased by Mr. Cruz.
 #a. Create a data frame for month, price per liter(Php) and purchased-quantity(liter). Write the codes. 
 Month = c("Jan","Feb","March","Apr","May","June")
 Php <- c(52.20,57.25,60.00,65.00,74.25,54.00)
 Liters <- c(25,30,40,50,10,45)

 Diesel_fuel <- data.frame (Month, Php, Liters)
 Diesel_fuel
 
#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use weighted.mean(liter, purchase).
  weighted.mean(Php)
  
#7.a. Type "rivers" in your R console.
  data <- c(length(rivers), sum(rivers), mean(rivers),
            median(rivers), var(rivers), sd(rivers), 
            min(rivers), max(rivers))
  data
  
#7.b/c. What are the results? Write the code and its output.
  #rivers
    rivers
  #data
    data
    
#8.a. Create vectors according to the above table. Write the codes.
    Power_Ranking <- c(1:25)
    Celebrity_Name = c("Tom Cruise", "Rolling Stones", 
                       "Oprah Winfrey", "U2", "Tiger Woods",
                       "Steven Speilberg", "Howard Stern",
                       "50 Cent", "Cast of the Sopranos",
                       "Dan Brown", "Bruce Springsteen",
                       "Donald Trump", "Muhammad Ali", 
                       "Paul Mcartney", "George Lucas",
                       "Elton John", "David Letterman",
                       "Phil Mickelson", "J.K Rowling",
                       "Bradd Pitt", "Peter Jackson", 
                       "Dr. Phil McGraw", "Ja Lenon",
                       "Celine Dion", "Kobe Bryant")
    Pay <- c(67,90,225,110,90,332,302,41,52,88,55,44,55,40,
             233,34,40,47,75,25,39,45,32,40,31)
    Celebrities_pay <- data.frame( Power_Ranking, Celebrity_Name,
                                  Pay)
    Celebrities_pay
#8.b. Modify the power ranking and pay of J.k. Rowling. change power Ranking to 15 and pay to 90. write the codes and its output.
    Celebrities_pay <- data.frame( Power_Ranking, Celebrity_Name,
                                   Pay)
     Celebrities_pay[Celebrities_pay == 19] <-15
     Celebrities_pay[Celebrities_pay ==75] <-90
     Celebrities_pay
#8.c. Interpret the data  
     Celebrities_pay <- data.frame( Power_Ranking, Celebrity_Name,
                                    Pay)
     Celebrities_pay
