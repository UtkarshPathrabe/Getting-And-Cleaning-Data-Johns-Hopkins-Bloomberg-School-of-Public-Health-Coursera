setwd("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory")
if(!file.exists("USCommunitiesMicrodata.csv")){
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv "
        download.file(fileUrl, destfile = "USCommunitiesMicrodata.csv")
        dateDownloaded <- date()
}
DT <- fread("D:\\John Hopkins University Data Science Coursera\\03. Getting And Cleaning Data\\Working Directory\\USCommunitiesMicrodata.csv")
time1 <- system.time(DT[,mean(pwgtp15),by=SEX])
time2 <- system.time(mean(DT[DT$SEX==1,]$pwgtp15)) + system.time(mean(DT[DT$SEX==2,]$pwgtp15))
time3 <- system.time(mean(DT$pwgtp15,by=DT$SEX))
time4 <- system.time(sapply(split(DT$pwgtp15,DT$SEX),mean))
time5 <- system.time(tapply(DT$pwgtp15,DT$SEX,mean))
time6 <- system.time(rowMeans(DT)[DT$SEX==1]) + system.time(rowMeans(DT)[DT$SEX==2])
time1
time2
time3
time4
time5
time6