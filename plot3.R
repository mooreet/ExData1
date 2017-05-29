source("houshold_power.R")

png(filename = "plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow=c(1,1))
plot(time,df$Sub_metering_1, ylab="Energy sub metering", 
                 xlab="",type = "l")
lines(time,df$Sub_metering_2, ylab="", 
      xlab="",type = "l",col="red")
lines(time,df$Sub_metering_3, ylab="", 
      xlab="",type = "l",col="purple")
legend("topright", lty=1, col =      c("black","red", "purple"), 
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()

