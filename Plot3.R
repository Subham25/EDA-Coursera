#plot3
setwd("E:/")
dat <- read.csv("E:/Example.csv")
as.Date(dat$Date, format = "%d/%m/%Y")

dat$newdate <- with(dat, as.POSIXct(paste(Date, Time), format="%d-%m-%Y %H:%M"))
par = (mfrow = c(1,1))
plot(dat$newdate,dat$Sub_metering_1, type = "l", xlab='', ylab = "Energy sub metering")
lines(dat$newdate, dat$Sub_metering_2, col= "Red")
lines(dat$newdate, dat$Sub_metering_3, col= "Blue")
legend("topright", 
       c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty = c(1,1,1), col = c("Black","Red","Blue"))
dev.copy(png,'plot3.png')
dev.off()
