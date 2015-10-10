rawData = function (dataFileName) {
    library(data.table)
    raw = fread(dataFileName, na.strings=c('?'))
    raw$NDate = as.Date(raw$Date, "%d/%m/%Y")
    raw = subset(raw, raw$NDate >= as.Date('01-02-2007', '%d-%m-%Y'))
    raw = subset(raw, raw$NDate < as.Date('03-02-2007', '%d-%m-%Y'))
    raw$DT = as.POSIXct(paste(raw$Date, raw$Time), format = "%d/%m/%Y %H:%M:%S")
    raw
}

if (!exists("hpc")) hpc = rawData('./data/household_power_consumption.txt')