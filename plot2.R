#set working directory with the source data file
setwd("D:/Dimon/Coursera/Exploratory Data Analysis/project1")
#read the source data file
x<-read.csv2("household_power_consumption.txt",sep=";")
png(filename = "plot2.png", width = 480, height = 480)

#extract data for two days
data <- subset(x,Date == "1/2/2007" | Date == "2/2/2007")

data$Time = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME","en_US.UTF-8")     # Depends on the system, works for me on my OS


plot(data$Time, data$Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab="")
lines(data$Time, data$Global_active_power)



dev.off()