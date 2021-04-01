# Design a way of downloading all tweets that contain the #rstats hashtag
# every day and stacking them day by day without losing tweets or having 
# duplicate tweets. You may want to consider using a continuous integration
# tool like GitHub Action to run a script daily that pulls the data and joins
# it to previously stored data.


# install.packages("rtweet")
# install.packages("dplyr")
library(rtweet)
library(dplyr)


## authenticate via web browser
token <- create_token(
  app = "rstatsjournalismresearch",
  consumer_key = '6j7Ig4xzHlBr8uUJ5A4Ym0NTf',
  consumer_secret = 'k8njuFVfXaeZK86xDGDUgEqNvSXf5VGM1VwHHnAFeGS4HqhTfo',
  access_token = '1091760610688167936-eL2zivqtO4iGdmpfl4Z8p42ScBbCoa',
  access_secret = 'I8dMbAm88acrOYKVKIREq8XxII8bjwJlr5JCgmbdOuNu9')


# get tweets file if exist or create a new one
if(!file.exists("tweets_database.csv")){
  tweets = data.frame()
}else{
  tweets = rtweet::read_twitter_csv('tweets_database.csv')
}

#Get 18000 latest tweets regarding #rstats
rt <- search_tweets(
  "#rstats", n = 18000, include_rts = FALSE
)

#Flatten the list so that we can store it as csv file
rt <- rtweet::flatten(rt)
tweets <- distinct(rbind(rt, tweets), status_id, .keep_all = TRUE)

#Write csv file in database
rtweet::write_as_csv(tweets, 'tweets_database.csv')




