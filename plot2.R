#R-Code for plot2

#Set the working directory
setwd("D:/Data Science/Exploratory Data Analysis/Exercises/Week1/exdata-data-household_power_consumption")

#read the file
data<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",nrows=69516)
data<-data[66637:nrow(data),]
#Transform date into an R-date
data$datetime <- strptime(paste(data$Date,data$Time),
                          format = "%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English") #so that dates appear in English

#Plot 2
png(file="../plot2.png",width=480,height=480)
plot(data$datetime,as.numeric(as.character(data[,3])),type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()
