#plot1
setwd("E:/")
dat <- read.csv("E:/Example.csv")
hist(as.numeric(dat$Global_active_power), col = "Red" , xlab = "Global Active Power(kilowatts)" ,breaks =12, ylims= c(0,1200), main = "Global Active Power")
dev.copy(png,'plot1.png')
dev.off()