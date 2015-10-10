source('code/rawdata.R')

png("plot1.png", width= 480, height = 480, units = "px")

hist(hpc$Global_active_power, breaks = 12, col="#FF2503", 
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()