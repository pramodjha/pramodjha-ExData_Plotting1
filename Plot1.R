# Read_file from Directory
  read_file<- read.table("D:/R Folder/data/household_power_consumption.txt", sep=";",header = TRUE,stringsAsFactors = F)
  
# Format Date  
  read_file$Date<- as.Date(read_file$Date, format = "%d/%m/%Y")  
  
# Create Subset from orignal data  
  new_data <- subset(read_file, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
  rm(read_file)
  
# paste Date & Time  
  date_time<- paste(new_data$Date,new_data$Time)
  
# Fromat Date
  new_data$date_time<- as.POSIXct(date_time)

# Create Histogram Graph  
  hist(as.numeric(new_data$Global_active_power),col = "RED",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
  dev.copy(png, file="plot1.png", height=480, width=480)