str(subSetData)
#need to change global active power to numeric
globalActivePower <- as.numeric(subSetData$Global_active_power)
#histogram plot of global active power
hist(globalActivePower$Global_active_power,col="red")
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
