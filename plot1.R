source("houshold_power.R")

png(filename = "plot1.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow=c(1,1))
hist(df$Global_active_power, col = "red", main = "Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()

