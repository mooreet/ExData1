source("houshold_power.R")


png(filename = "plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white")

par(mfrow=c(1,1))
with(df, plot(time,Global_active_power, 
                 ylab="Global Active Power (kilowatts)", 
                 xlab="", type = "l"))

dev.off()
