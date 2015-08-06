setwd("C:/Users/Admin/Documents/RDS/M4/prj1")

dataFile <- "./household_power_consumption.txt"
alldata <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- alldata[alldata$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
  globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
