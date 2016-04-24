#R-Code for plot1

#Set the working directory
setwd("D:/Data Science/Exploratory Data Analysis/Exercises/Week1/exdata-data-household_power_consumption")

#read the file
data<-read.table(file="household_power_consumption.txt",header=TRUE,sep=";",nrows=69516)
data<-data[66637:nrow(data),]
#Transform date into an R-date
data$datetime <- strptime(paste(data$Date,data$Time),
                          format = "%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME", "English") #so that dates appear in English


#plot1
png(file="../plot1.png",width=480,height=480)
hist(as.numeric(as.character(data[,3])),col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()


