#Assignment_"versicolor"
#Frias_BSIT2-A

#1.Data(iris).

 adata <- data.frame(iris)
 adata

#2.Subset the iris set into 3files per species.

 bdata <- subset(adata, Species == 'versicolor')
 bdata

 splngth <- iris$Sepal.Length[51:100]
 splngth

 splwd <- iris$Sepal.Width[51:100]
 splwd

 ptlngth <- iris$Petal.Length[51:100]
 ptlngth

 ptlwd <- iris$Sepal.Width[51:100]
 ptlwd

 mn <- c(splngth, splwd, ptlngth, ptlwd)
 mn

#3. Get the total mean for each species.

 ttlmn <- mean(mn)
 ttlmn

#4. Get the mean of each characteristics of the species.

 asplmn <- mean(splngth)
 asplmn

 bsplmn <- mean(splwd)
 bsplmn

 aptlmn <- mean(ptlngth)
 aptlmn

 bptlmn <- mean(ptlwd)
 bptlmn


