library(ggplot2)
setwd("/home/eric/current/")

## iteration to determine how many lines to skip and how many to read
## Then call load.data function

test <- read.table("data/household_power_consumption.txt", header=T, sep=";", nrows=20)

df <- load.data("data","household_power_consumption.txt", skp=66637, nr=2880)
colnames(df) <- colnames(test) # to get the header information correct

## my load function
load.data <- function(directory,file,skp,nr){
  src.file <- paste(directory,"/",file,sep="")
  data.df <- read.table(src.file,sep=";", header = T, skip=skp, nrows = nr)
}

setwd("/home/eric/current/repos/ExData1")
# parse time
time.temp <- c(paste(df$Date,df$Time))
time <- strptime(time.temp,format="%d/%m/%Y %H:%M:00")
