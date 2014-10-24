setwd("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory")
library(XML)
fileUrl <- "D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory\\Baltimore_Restaurants.xml"
doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
zipcodes <- xpathSApply(doc, "//zipcode", xmlValue)
sum(zipcodes == 21231)