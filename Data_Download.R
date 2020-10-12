################################
# STAT615 Group Project
# Data Download
# Author: Carlos Amaya Membreno
# Date: October 12 2020
################################

library(tidyverse)

#Files must be in source file location
#Read and Prepare NYT Data
NYT <- read.csv("us-counties.txt")
NYT$date<-as.Date(NYT$date)
NYT<-NYT %>% filter(date=="2020-10-10")
NYT$state <- toupper(NYT$state)
#Read CDC Data
CDC <- read.csv("SVI2018_US_COUNTY.csv")
#Merge into single DF
merge(NYT,CDC,by.x = c("state","county"),by.y = c("STATE","COUNTY"))
NYTCDC<-merge(NYT,CDC,by.x = c("state","county"),by.y = c("STATE","COUNTY"))
head(NYTCDC)
