setwd("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory")
if(!file.exists("USCommunities.csv")){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv "
        download.file(fileUrl, destfile = "USCommunities.csv")
        dateDownloaded <- date()
}
communityData <- read.csv("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory\\USCommunities.csv")
head(communityData)
communityValue <- communityData$VAL
communityValue <- communityValue[!is.na(communityValue)]
count <- sum(communityValue == 24)
count