#Assignment_"Setosa"
#Frias_BSIT2-A

#1.Data(iris).

 data <- data.frame(iris)
 data

#2.Subset the iris set ito 3files per species.

 data1 <- subset(data, Species == 'setosa')
 data1

 spl_lngth <- iris$Sepal.Length[1:50]
 spl_lngth

 spl_wid <- iris$Sepal.Width[1:50]
 spl_wid

 ptl_lngth <- iris$Petal.Length[1:50] 
 ptl_lngth

 ptl_wid <- iris$Petal.Width[1:50]
 ptl_wid

 ttl_mn <- c(spl_lngth, spl_wid, ptl_lngth , ptl_lngth)
 ttl_mn

#3. Get the total mean for each species.

 ttl_mean <- mean(ttl_mn)
 ttl_mean

#4. Get the mean of each characteristics of the species.

 aspl_mn <- mean(spl_lngth)
 aspl_mn

 bspl_mn <- mean(spl_wid)
 bspl_mn

 aptl_mn <- mean(ptl_lngth)
 aptl_mn

 bptl_mn <- mean(ptl_wid)
 bptl_mn
 