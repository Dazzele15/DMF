library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)

# SETUP CREDENTIALS.

CONSUMER_KEY <- "GhU7fIZQ1cBQUwSAVyQLS51oe"
CONSUMER_SECRET <-  "ztsb51HiNexgHqYUpWqKHvXwy6ajMNgpMtqOjCcX8SEUPvVOOt"
ACCESS_TOKEN <- "1599430723357749248-Yyf8Ib5uZGb2WHnkDkPeE6BqRyQpY3"
ACCESS_SECRET <- "73HRbVUUlSErUA6kr3zgxUZFBV091VuBZxajpGNON9mYs"

setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET)

# EXTRACTING TWEETS.
 orewa <- searchTwitter("Anime", 
                           n=10000, 
                           lang="en", 
                           since="2022-12-15", 
                           until="2022-12-22", 
                           retryOnRateLimit = 120)
 orewa

# CONVERTING LIST DATA TO DATA FRAME.
 watashi <- twListToDF(orewa)
 
 watashi

# SAVE DATA FRAME FILE.
save(watashi,file = "AnimeTweetsDF.Rdata")

# LOAD DATA FRAME FILE.
load(file = "AnimeTweetsDF.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
  Kira <- sapply(watashi, function(x) sum(is.na(x)))

  Kira

#Tweets
# SUBSETTING USING THE dplyr() PACKAGE.
  Lelouch <- watashi %>%
   select(screenName,text,created, isRetweet) %>% filter(isRetweet == FALSE)

  Lelouch

# GROUPING THE DATA CREATED. 
  Lelouch %>%  
   group_by(1) %>%  
   summarise(max = max(created), min = min(created))

  Han <- Lelouch %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
  Han

  min_byul <- Lelouch %>% pull(created) %>% min()
  
  min_byul

  max_byul <- Lelouch %>% pull(created) %>% max()
  
  max_byul

# Plot on tweets by time using the library(plotly) and ggplot().
  Gon <- ggplot(Han, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "midnightblue", high = "aquamarine4")

Gon %>% ggplotly()

#==============
#Retweets

  sayo_tweets <- watashi %>%
   select(screenName,text,created, isRetweet) %>% filter(isRetweet == TRUE)
 
 sayo_tweets

  sayo_tweets %>%  
   group_by(1) %>%  
   summarise(max = max(created), min = min(created))

  saeyun <- sayo_tweets %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
  saeyun

 min_byul <- sayo_tweets %>% pull(created) %>% min()
 min_byul
 
 max_byul <- sayo_tweets %>% pull(created) %>% max()
 max_byul

# Plot on tweets by time using the library(plotly) and ggplot().
plot_desu <- ggplot(saeyun, aes(x = Created_At_Round)) +
  geom_histogram(aes(fill = ..count..)) +
  theme(legend.position = "right") +
  xlab("Time") + ylab("Number of tweets") + 
  scale_fill_gradient(low = "pink", high = "cyan")

plot_desu %>% ggplotly()

