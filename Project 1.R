setwd("D:/R Folder/data")
read_file<- read.table("D:/R Folder/data/household_power_consumption.txt", sep=";",header = TRUE)
read_file<- na.omit(read_file)
date_time<- paste(read_file$Date,read_file$Time)
date1<- "2007/02/01 00:00:00"
date1<- as.Date(date1, "%Y/%m/%d")
date2<- "2007/02/02"
date2<- as.Date(date2, "%Y/%m/%d")
new_date_time = strptime(as.character(date_time),"%d/%m/%Y %H:%M:%S")
