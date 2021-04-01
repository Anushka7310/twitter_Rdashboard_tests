# R Community Explorer: Twitter (Tests)

## Test 1
* Design a way of downloading all tweets 
that contain the #rstats hashtag every day and stacking them day by day without losing tweets or having duplicate tweets. You may want to consider using a continuous integration tool like GitHub Action to run a script daily that pulls the data and joins it to previously stored data.

**Explanation**
So we have used rtweet package to download and extract tweets from twitter that contains #RSTATS. I have created a csv file whenI am storing the tweets.
So for sample, I've started with 18000 tweets, stored them in a csv. To update this file daily, I've created a github action workflow in this repo, which runs the script daily at 5:00 PM UTC. 

![Screenshot 2021-04-01 at 6 49 47 PM](https://user-images.githubusercontent.com/61081130/113301954-335d0180-931d-11eb-81ae-b9e664418f04.png)

![Screenshot 2021-04-01 at 6 50 18 PM](https://user-images.githubusercontent.com/61081130/113301965-36f08880-931d-11eb-9ff3-945c49258923.png)


## Test 2
Create a simple demo flexdashboard.

**Explanation**
For this I've created a simple `flexdashboard`

## Test 3
Make a simple plot using any of echarts.js, d3.js and plotly.js

**Explanation**
The third task was interesting for me. In this, I've added 2 plots in the the flexdashboard.
The first plot is created using `plotly`, it shows the frequency the language used on y-axis and languages in x-axis. To add moreinteractivity, I've added a slider which contains the days. I wanted to used years but due to less data, I've used days instead.

![3 1](https://user-images.githubusercontent.com/61081130/113301925-29d39980-931d-11eb-9007-7ac00a50797a.gif)


So slider and plotly is connected to each other using `crosstalk`. If you select a perticular range of days on slider, you can see immediate changes in plotly bar graph.

The second plot I've used is `wordcloud`. It show's the frequency of words. I've used some other packages to remove punctuations, link etc.
