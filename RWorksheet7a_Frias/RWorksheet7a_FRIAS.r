#RWorksheet7a_FRIAS
#BSIT2-A


library(Hmisc)
library(pastecs)


#1. Create a data frame for the table below 

 Student <- seq(1:10)
 Pre_Test <- c(55,54,47,57,51,61,57,54,63,58)
 Post_Test <- c(61,60,56,63,56,63,59,56,62,61)
 
 record <- data.frame(Student,Pre_Test,Post_Test)

 record

#a. Compute the descriptive statistics using different packages (Hmisc and pastecs).
#Write the codes and its result.

 describe(record)

 stat.desc(record)

#2. The Department of Agriculture was studying the effects of several levels of a
#fertilizer on the growth of a plant. For some analyses, it might be useful to convert
#the fertilizer levels to an ordered factor.
#The data were 10,10,10, 20,20,50,10,20,10,50,20,50,20,10.

 Fert_Lvl <- c(10,10,10,20,20,50,10,
                       20,10,50,20,50,20,10)



#a. Write the codes and describe the result.
 
 ordr <- factor(Fert_Lvl, ordered = TRUE)
 
 ordr

#3. Abdul Hassan, president of Floor Coverings Unlimited, has asked you to study
#the exercise levels undertaken by 10 subjects were “l”, “n”, “n”, “i”, “l” ,
#“l”, “n”, “n”, “i”, “l” ; n=none, l=light, i=intense

 subs <- c("l","n","n","i","l","l","n","n","i","l")

#a. What is the best way to represent this in R?
#Dataframe

 mine <- data.frame(subs)

 mine

#4.Sample of 30 tax accountants from all the states and territories of Australia and
#their individual state of origin is specified by a character vector of state mnemonics
#as:

  state_orgn <- c("tas", "sa", "qld", "nsw", "nsw", "nt", "wa", "wa", "qld",
           "vic", "nsw", "vic", "qld", "qld", "sa", "tas", "sa", "nt",
           "wa", "vic", "qld", "nsw", "nsw", "wa", "sa", "act", "nsw",
           "vic", "vic", "act")

   state_orgn
   
#a. Apply the factor function and factor level. Describe the results.

    han <- factor(state_orgn)

    han

    levels(han)
    
#5. From #4 - continuation:

#• Suppose we have the incomes of the same tax accountants in another vector (in

    income <- c(60, 49, 40, 61, 64, 60, 59, 54,
             62, 69, 70, 42, 56, 61, 61, 61, 58, 51, 48,
             65, 49, 49, 41, 48, 52, 46, 59, 46, 58, 43)

#a. Calculate the sample mean income for each state we can now use the special
#function tapply():

    stt_income <- tapply(income,state_orgn, mean )

    stt_income
    
#b. Copy the results and interpret.
#     act      nsw       nt 
#44.50000 57.33333 55.50000 
# qld       sa      tas 
#53.60000 55.00000 60.50000 
# vic       wa 
#56.00000 52.25000 
#these are tge mean of income 

#6.Calculate the standard errors of the state income means (refer again to number 3)

    stdError <- function(x) sqrt(var(x)/length(x))

#a. What is the standard error? Write the codes.

    istdr <- tapply(income, state_orgn, stdError)

    istdr
#b. Interpret the result.
#It tells the sample mean of income
#7. Use the titanic dataset.

    install.packages("titanic")
    data("Titanic")
    
    titanic<- data.frame(Titanic)

#a. subset the titatic dataset of those who survived and not survived. Show the
#codes and its result.

    srvv <- subset(titanic, Survived == "Yes")

    srvv


    yours <- subset(titanic, Survived == "No")

    yours  

#8. The data sets are about the breast cancer Wisconsin. The samples arrive periodically as Dr. Wolberg reports his clinical cases. The database therefore reflects this
#chronological grouping of the data. You can create this dataset in Microsoft Excel.

#a. describe what is the dataset all about.
#The dataset s all about Breast Cancer.

#b. Import the data from MS Excel. Copy the codes.

    install.packages("readxl")

    library("readxl")

    brst_cncr <- read_excel("C:/Users/User/Downloads/Breast_Cancer.xlsx")

    brst_cncr
    
#c. Compute the descriptive statistics using different packages. Find the values of:
#c.1 Standard error of the mean for clump thickness.

    num8c1.n <- length(brst_cncr$`CL. thickness`)
    num8c1.sd <- sd(brst_cncr$`CL. thickness`)
    num8c1.se <- num8c1.sd/sqrt (brst_cncr$`CL. thickness`)
    num8c1.se

#c.2 Coefficient of variability for Marginal Adhesion.

    Marginal_Adh <- as.numeric(brst_cncr$V5)

    stat.desc(Marginal_Adh)

#c.3 Number of null values of Bare Nuclei.

    Br_Nuclei <- as.numeric(brst_cncr$V7)

    stat.desc( Br_Nuclei)

#c.4 Mean and standard deviation for Bland Chromatin

    bl_Chromatin <- as.numeric(brst_cncr$V8)


    mean(bl_Chromatin , na.rm = TRUE) 

    sd(bl_Chromatin , na.rm = TRUE)

   stat.desc( bl_Chromatin)

#c.5 Confidence interval of the mean for Uniformity of Cell Shape

   cll_shape <- as.numeric(brst_cncr$V4)
   stat.desc(cell_shape )

#d. How many attributes?

   attributes(brst_cncr)
   
#e. Find the percentage of respondents who are malignant. Interpret the results.

   dcribe(brst_cncr$V11, na.rm =TRUE)

#9. Export the data abalone to the Microsoft excel file. Copy the codes.
  library("AppliedPredictiveModeling")
  
   data("abalone")
   head(abalone)
  
   summary(abalone)

  library(xlsx)
   
 
  write.xlsx(abalone,"Desktop/abalone.xlsx")
# follow the instructions of #8 letter b
#after sa "abalone", use your file location kung diin mo gin butang imo worksheets 
# then //abalone.xlsx


