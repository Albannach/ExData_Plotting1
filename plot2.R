source('code/rawdata.R')

png("plot2.png", width= 480, height = 480, units = "px")

plot(hpc$Global_active_power ~ hpc$DT, pch='.', type='o', 
     xlab='', 
     ylab='Global Active Power (kilowatts)')

dev.off()