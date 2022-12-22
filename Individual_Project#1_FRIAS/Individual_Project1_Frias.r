library(wordcloud)
library(plotly)
library(tm)
library(dplyr)
library(RColorBrewer)
library(ggplot2)
library(twitteR)
library(slam)
library(magrittr)
library(tidytext)
library(rtweet)
library(corpus)

# SETUP CREDENTIALS.

CONSUMER_KEY <- "GhU7fIZQ1cBQUwSAVyQLS51oe"

CONSUMER_SECRET<- "ztsb51HiNexgHqYUpWqKHvXwy6ajMNgpMtqOjCcX8SEUPvVOOt"
ACCESS_TOKEN <- "1599430723357749248-Yyf8Ib5uZGb2WHnkDkPeE6BqRyQpY3"

ACCESS_SECRET <- "73HRbVUUlSErUA6kr3zgxUZFBV091VuBZxajpGNON9mYs"

library(twitteR)
setup_twitter_oauth(consumer_key = CONSUMER_KEY,
                    consumer_secret = CONSUMER_SECRET,
                    access_token = ACCESS_TOKEN,
                    access_secret = ACCESS_SECRET
)

# EXTRACTING TWEETS.
trendTweets <- searchTwitter("Anime -filter:retweets", 
                             n=10000, 
                             lang="en", 
                             since="2022-12-15", 
                             until="2022-12-22", 
                             retryOnRateLimit = 120)
  trendTweets

# CONVERTING LIST DATA TO DATA FRAME.
  t_TweetsDF1 <- twListToDF(trendTweets)
  class(t_TweetsDF1)
  names(t_TweetsDF1)
  View(t_TweetsDF1)
  head(t_TweetsDF1)[1:5]
  head(t_TweetsDF1$text)[1:5]

# SAVE DATA FRAME FILE.
  save(t_TweetsDF1,file = "trendingTweetsDF.Rdata")

# LOAD DATA FRAME FILE.
  load(file = "trendingTweetsDF.Rdata")

# SAVING FILE AS RDATA.
  save(t_TweetsDF1, file = "tweetsDF2.Rdata")

# CHECKING FOR MISSING VALUES IN A DATA FRAME.
  a <- sapply(t_TweetsDF1, function(x) sum(is.na(x)))
  a

# SUBSETTING USING THE dplyr() PACKAGE.
  t_TweetsDF2 <- t_TweetsDF1 %>%
   select(screenName,text,created,statusSource)
  t_TweetsDF2

# GROUPING THE DATA CREATED. 
  t_TweetsDF2 %>%  
    group_by(1) %>%  
    summarise(max = max(created), min = min(created))

  mutate_d <- t_TweetsDF2 %>%  mutate(Created_At_Round = created %>% round(units = 'hours') %>% as.POSIXct())
  mutate_d
 
  t_TweetsDF2 %>% pull(created) %>% min() 
  t_TweetsDF2 %>% pull(created) %>% max()

# Plot on tweets by time using the library(plotly) and ggplot().
  plot <- mutate_d %>% 
  dplyr::count(Created_At_Round) %>% 
  ggplot(mapping = aes(x = Created_At_Round, y = n)) +
  theme_light() +
  geom_line() +
  xlab(label = 'Date') +
  ylab(label = NULL) +
  ggtitle(label = 'Number of Tweets per Hour')

  plot %>% ggplotly()

# ==============================================

  ggplot(data = t_TweetsDF2, aes(x = created)) +
   geom_histogram(aes(fill = ..count..)) +
   theme(legend.position = "right") +
   xlab("Time") + ylab("Number of tweets") + 
   scale_fill_gradient(low = "pink", high = "cyan")

# PLOTTING STATUS SOURCE.
  encodeSource <- function(x) {
  if(grepl(">Twitter for iPhone</a>", x)){
    "iphone"
  }else if(grepl(">Twitter for iPad</a>", x)){
    "ipad"
  }else if(grepl(">Twitter for Android</a>", x)){
    "android"
  } else if(grepl(">Twitter Web Client</a>", x)){
    "Web"
  } else if(grepl(">Twitter for Windows Phone</a>", x)){
    "windows phone"
  }else if(grepl(">dlvr.it</a>", x)){
    "dlvr.it"
  }else if(grepl(">IFTTT</a>", x)){
    "ifttt"
  }else if(grepl(">Facebook</a>", x)){  
    "facebook"
  }else {
    "others"
  }
}


  t_TweetsDF2$tweetSource = sapply(t_TweetsDF2$statusSource, 
                                 encodeSource)

  tweet_appSource1 <- t_TweetsDF2 %>% 
   select(tweetSource) %>%
   group_by(tweetSource) %>%
   summarize(count=n()) %>%
   arrange(desc(count))

 ggplot(t_TweetsDF2[t_TweetsDF2$tweetSource != 'others',], aes(tweetSource, fill = tweetSource)) +
  geom_bar() +
  theme(legend.position="none",
        axis.title.x = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  ylab("Number of tweets") +
  ggtitle("Tweets by Source")

# ACCOUNTS WHICH TWEET ABOUT INDONESIA.
 tweet_appScreen1 <- t_TweetsDF2 %>%
  select(screenName) %>%
  group_by(screenName) %>%
  summarize(count=n()) %>%
  arrange(desc(count)) 

#convert to Corpus
 namesCorpus <- Corpus(VectorSource(t_TweetsDF2$screenName))  #using ScreenName
 class(t_TweetsDF2$screenName)

 adata <- class(VectorSource(t_TweetsDF2$screenName))
 adata

 str(namesCorpus)

 class(namesCorpus)

 beum <- namesCorpus
 beum

# WORDCLOUD FOR SCREEN_NAMES.
 palt7 <- brewer.pal(8, "Dark2")
 palt2 <- palt7[-(1:4)]
 set.seed(123)

 par(mar = c(0,0,0,0), mfrow = c(1,1))

 wordcloud(words = namesCorpus, scale=c(3,0.5),
          max.words=10000,
          random.order=FALSE,
          rot.per=0.5,
          use.r.layout=TRUE,
          colors=palt7)

