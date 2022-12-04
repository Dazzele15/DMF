#RWorksheet6_Frias
#BSIT2-A

library(ggplot2)
library(dplyr) 

##
## Attaching package: ’dplyr’

## The following objects are masked from ’package:stats’: ##
##	filter, lag

## The following objects are masked from ’package:base’: ##
##	intersect, setdiff, setequal, union



data(mpg)

a <- as.data.frame(mpg)
a


#1.	How many columns are in mpg dataset? How about the number of rows? Show the codes and its result.
   
   mpgdata <- glimpse(a)


#2.	Which manufacturer has the most models in this data set? Which model has the most variations? Ans:
 
  manfctrr <- mpgdata %>% group_by(manufacturer, model) %>% count()
  manfctrr
  
  colnames(manfctrr) <- c("Manufacturer", "Model", "Counts")
  
  #a.	Group the manufacturers and find the unique models. Copy the codes and result.
  
   uniq_mdl <- mpgdata %>% group_by(manufacturer) %>% distinct(model) %>% count()
   uniq_mdl
   
#b.	Graph the result by using plot() and ggplot(). Write the codes and its result.
  
   plot(manfctrr)

   ggplot(manfctrr, aes(Manufacturer, Model)) + geom_point()
   
#3.	Same dataset will be used. You are going to show the relationship of the modeland the manufacturer.
    #a.What does ggplot(mpg, aes(model, manufacturer)) + geom_point() show?
   
   ggplot(mpg, aes(model, manufacturer)) + geom_point()
#Answer: it shows the the relationship of model and manufacturer through the plot that makes it simply and easy to understand.
   
  # b.	For you, is it useful? If not, how could you modify the data to make it more informative?
   
#Answer: Yes it is, but it can be modify by simply gather the important one by using a line.
   
#4.	Using the pipe (%>%), group the model and get the number of cars per model. Show codes and its result.
   
   car_mdl <- mpgdata %>% group_by(model) %>% count()
   car_mdl  
   
   colnames(car_mdl) <- c("Model", "Counts")
  
 # a.	Plot using the geom_bar() + coord_flip() just like what is shown below. Show codes and its result.
   
    qplot(model, data = a,
          main = "Number of Cars per Model",
          xlab = "Model",
          ylab = "Number of Cars", geom = "bar",
          fill = manufacturer) + coord_flip()
   
# b.	Use only the top 20 observations. Show code and results.
    
    a_top <- car_mdl[1:20,] %>% top_n(20)
    a_top
    
  ggplot(a_top, aes(x = Model, y = Counts)) + geom_bar(stat = "Identity") + coord_flip()
    
 #5.	Plot the relationship between cyl - number of cylinders and displ - engine displace- ment using geom_point with aesthetic colour = engine displacement.
  #Title should be “Relationship between No. of Cylinders and Engine Displacement”.
     #a.	Show the codes and its result.
    
    ggplot(data = mpgdata, mapping = aes(x = displ,
                                         y = cyl,
                                         main = "Relationship between No. of Cylinderd and Engine Dysplacement")) +
                                        geom_point(mapping =  aes(colour = "engine displacement"))
    
    
   #b.	How would you describe its relationship?
    #Answer: represent the clustered data of engine displacement.
    
# 6.	Get the total number of observations for drv - type of drive train (f = front-wheel drive, r = rear wheel drive, 4 = 4wd) and class - type of class (Example: suv, 2seater, etc.). Plot using the geom_tile() where the number of observations for class be used as a fill for aesthetics.
  # a.	Show the codes and its result for the narrative in #6.
    
    ggplot(data = mpgdata, mapping = aes(x = drv,
                                         y = class)) +
                                        geom_tile(aes(fill = class))
    
  #b.	Interpret the result.
     #Answer: By using the geom_tile this time the data was shown in geometric tilea
   #also by using the fill as class the color was different from one another and can be easily distinguished what its representation(
       
    
  # 7.	Discuss the difference between these codes. Its outputs for each are shown below.
   #•	Code #1
    
    ggplot(data = mpg) +
      geom_point(mapping = aes(x = displ, 
                               y = hwy, 
                               colour = "blue"))
    
    )
 #Code #2
   
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ,
                           y = hwy), colour = "blue")

#Answer: THe color changed when it was seperated in the code. 

#8.	Try to run the command ?mpg. What is the result of this command?

 acr <- ?mpg
 acr

 #It shows the data of the mpg in the help option.
 
#a.	Which variables from mpg dataset are categorical?
 
 #Answer:The categoral variables of mpg dataset are mpg, manufacturer,
  #model, displ, year, cyl, trans, drv, cty, hwy, fl and class.
 
  #b.	Which are continuous variables.
 #Answer: The continuous variables are displ, year, cyl, cty, and hwy.
 
#c.	Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon). Mapped it with a continuous variable you have identified in #5-b. What is its result?
#Why it produced such output?
  
  ggplot(mpg, aes(x = cty,
                  y = hwy,
                  colour = displ)) +
                 geom_point()
  
#9.	Plot the relationship between displ (engine displacement) and hwy(highway miles per gallon) using geom_point(). Add a trend line over the existing plot using geom_smooth() with se = FALSE.
 #Default method is “loess”.
  
  ggplot(data = mpg, mapping = aes(x = displ,
                                   y = hwy)) +
    geom_point(mapping = aes(color = class)) +
    geom_smooth(se = FALSE)

#10.	Using the relationship of displ and hwy, add a trend line over existing plot.
# Set the se = FALSE to remove the confidence interval and method = lm to check for linear modeling.
  
   ggplot(data = mpg, mapping = aes(x = displ,
                                    y =  hwy,
                                    color = class)) +
     geom_point() + geom_smooth(se = FALSE,
                                method = lm)
   