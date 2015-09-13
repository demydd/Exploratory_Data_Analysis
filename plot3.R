#set working directory with the source data file
setwd("D:/Dimon/Coursera/Exploratory Data Analysis/project1")
#read the source data file
x<-read.csv2("household_power_consumption.txt",sep=";")
png(filename = "plot3.png", width = 480, height = 480)

#extract data for two days
data <- subset(x,Date == "1/2/2007" | Date == "2/2/2007")
data$myTime = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

Sys.setlocale("LC_TIME","en_US.UTF-8")     # Depends on the system, works for me on my OS


plot(c(data$myTime,data$myTime,data$myTime), c(data$Sub_metering_1, data$Sub_metering_2, data$Sub_metering_3), type = "n", ylab = "Energy sub metering", xlab="")
lines(data$myTime, data$Sub_metering_1, col="black")
lines(data$myTime, data$Sub_metering_2, col="red")
lines(data$myTime, data$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), col=c("black", "red", "blue"))



dev.off()


