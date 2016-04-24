#R-Code for plot3

#Set the working directory
setwd("D:/Data Science/Exploratory Data Analysis/Exercises/Week1/exdata-data-household_power_consumption")

#read the file
data<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",nrows=69516)
data<-data[66637:nrow(data),]
#Transform date into an R-date
data$datetime <- strptime(paste(data$Date,data$Time),
                          format = "%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English") #so that dates appear in English

#plot3
png(file="../plot3.png",width=480,height=480)
plot(data$datetime,as.numeric(as.character(data$Sub_metering_1)),type="n",xlab="",ylab="Energy sub metering")
points(data$datetime,as.numeric(as.character(data$Sub_metering_1)),col="black",type="l")
points(data$datetime,as.numeric(as.character(data$Sub_metering_2)),col="red",type="l")
points(data$datetime,as.numeric(as.character(data$Sub_metering_3)),col="blue",type="l")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1))
dev.off()