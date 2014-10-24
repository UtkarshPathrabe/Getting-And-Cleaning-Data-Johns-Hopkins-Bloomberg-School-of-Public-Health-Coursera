setwd("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory")
if(!file.exists("Natural_Gas_Aquisition.xlsx")){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx "
        download.file(fileUrl, destfile = "Natural_Gas_Aquisition.xlsx")
        dateDownloaded <- date()
}
library(xlsx)
colIndex <- 7:15
rowIndex <- 18:23
dat <- read.xlsx("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory\\Natural_Gas_Aquisition.xlsx", sheetIndex = 1, header = TRUE, colIndex = colIndex, rowIndex = rowIndex)
head(dat)
sum(dat$Zip*dat$Ext,na.rm=T)