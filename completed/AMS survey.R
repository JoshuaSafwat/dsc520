#DSC520
# Joshua Safwat-Taylor
# Date 4/3/22



library(readr)
# We first want to read the csv into R 
ams <- read_csv("data/acs-14-1yr-s0201.csv")

str(ams)
nrow(ams)
head(ams)

ggplot(ams, aes(HSDegree)) + geom_histogram(bins = 12) + ggtitle("Survey (HS Degree)") + xlab("Number of People") + ylab("Density") 

ams_historgram <- ggplot(ams, aes(HSDegree)) + geom_histogram(bins = 12)  + ggtitle("Survey (HS Degree)") + xlab("Number of People") + ylab("Density") + stat_function(fun = dnorm, color="red", args=list(mean=mean(ams$HSDegree), sd=sd(ams$HSDegree))) 


# iv. 1 The data distribution is not unimodal. 2. The Histogram is not symetrical. 3.It is approximately bell shaped.
# iv. 4. Yes the Historgram is approximately normal

p <- ggplot (ams, aes(sample= HSDegree))
p + stat_qq()
p + stat_qq() + stat_qq_line()

#vi 1. The data is not normal 2. Th edata is skewed left.. It is a negative 

library(pastecs)
stat.desc/(ams$HSDegree, basic = TRUE, desc = TRUE, norm = TRUE, p = 0.95)

#vii 