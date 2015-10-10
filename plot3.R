source('code/rawdata.R')

png("plot3.png", width= 480, height = 480, units = "px")

plot(hpc$Sub_metering_1 ~ hpc$DT, pch='.', type='o', col='black', ylim=c(0,38),
     xlab='',
     ylab='Energy Sub Metering')
par(new=T)

plot(hpc$Sub_metering_2 ~ hpc$DT, pch='.', type='o', col='red', ylim=c(0,38),
     xlab='', 
     ylab='')
par(new=T)

plot(hpc$Sub_metering_3 ~ hpc$DT, pch='.', type='o', col='blue', ylim=c(0,38), 
     xlab='', 
     ylab='')

legend("topright", cex=.8, pt.cex = 1, pch = '-', bty = "y", 
       col = c("black", "blue", "red"), 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()