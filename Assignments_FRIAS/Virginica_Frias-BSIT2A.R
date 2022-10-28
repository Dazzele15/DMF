#Assignment_"Virginica"
#Frias_BSIT2-A

#1.Data(iris).

 Adata <- data.frame(iris)
 Adata

#2. Subset the iris set into 3files per species.

 Bdata <-subset(Adata, Species == 'virginica')
 Bdata

 spllngth <- iris$Sepal.Length[101:150]
 spllngth

 splwid <- iris$Sepal.Width[101:150]
 splwid

 ptllngth <- iris$Petal.Length[101:150]
 ptllngth 

 ptlwid <- iris$Petal.Width[101:150]
 ptlwid

 spcmn <- c(spllngth, splwid, ptllngth, ptlwid)
 spcmn

#3. Get the total mean for each species.
 
 aspcmn <- mean(spcmn)
 aspcmn 

#4. Get the mean of each characteristics of the species.

 aspl <- mean(spllngth)
 aspl

 bspl <- mean(splwid)
 bspl

 aptl <- mean(ptllngth)
 aptl

 bptl <- mean(ptlwid)
 bptl

