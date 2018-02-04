#plot2
setwd("E:/")
dat <- read.csv("E:/Example.csv")

as.Date(dat$Date, format = "%d/%m/%Y")

dat$newdate <- with(dat, as.POSIXct(paste(Date, Time), format="%d-%m-%Y %H:%M"))
plot(dat$newdate,dat$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)",xlab ='')
dev.copy(png,'plot2.png')
dev.off()