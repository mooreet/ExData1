source("houshold_power.R")

png(filename = "plot4.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow=c(2,2))
with(df, {
  plot(time,Global_active_power, ylab="Global Active Power", xlab="", type = "l")
  plot(time,Voltage, ylab="Voltage", xlab="datetime", type = "l")
  plot(time,df$Sub_metering_1, ylab="Energy sub metering", xlab="",type = "l")
  lines(time,df$Sub_metering_2, ylab="", xlab="",type = "l",col="red")
  lines(time,df$Sub_metering_3, ylab="", xlab="",type = "l",col="purple")
  legend("topright", bty="n",lty=1, col = c("black","red", "purple"), 
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(time,Global_reactive_power, ylab="Global_reactive_power", 
       xlab="datetime", type = "l")
})

dev.off()


