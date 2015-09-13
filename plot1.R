#set working directory with the source data file
setwd("D:/Dimon/Coursera/Exploratory Data Analysis/project1")
#read the source data file
x<-read.csv2("household_power_consumption.txt",sep=";")
#extract data for two days
extract<-subset(x,Date=="1/2/2007" | Date=="2/2/2007")
#make histogram
png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(x$Global_active_power),breaks=12,col="red", xlab="Global Active Power (kilowatts)", main = "Global Active Power")
#savve histogram to required file
png(filename = "plot1.png", width = 480, height = 480)
#close grahic device
dev.off()

