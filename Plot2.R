# Read_file from Directory
  read_file<- read.table("D:/R Folder/data/household_power_consumption.txt", sep=";",header = TRUE)
  
# paste Date & Time    
  date_time<- paste(read_file$Date,read_file$Time)
  date1<- "2007/02/01 00:00:00"
  date2<- "2007/02/02 00:00:00"  
  
# Format Date  
  date1<- strptime(date1, "%Y/%m/%d %H:%M:%S")
  date2<- strptime(date2, "%Y/%m/%d %H:%M:%S")
  new_date_time = strptime(as.character(date_time),"%d/%m/%Y %H:%M:%S")
  new_data<- transform(read_file, Date = strptime(as.character(date_time),"%d/%m/%Y %H:%M:%S"))

# Create Subset from orignal data    
  filter_data<- subset(new_data, new_data$Date >= date1 & new_data$Date <= date2)
  Converting_GAP<- as.numeric(as.character(filter_data$Global_active_power))
  
# Create line Graph    
  plot(filter_data$Date,filter_data$Global_active_power, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")