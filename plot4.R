#a boxplot over sub-metering and weekdays
#convert to days
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
datetime
globalActivePower <- as.numeric(subSetData$Global_active_power)
globalreActivePower <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
str(subSetData)
sub_1 <- as.numeric(subSetData$Sub_metering_1)
sub_2 <- as.numeric(subSetData$Sub_metering_2)
sub_3 <- as.numeric(subSetData$Sub_metering_3)
png("plot4.png")
#4 plots
par(mfrow = c(2, 2)) 
#plot 1
plot(datetime, globalActivePower, type="l", ylab="Global Active Power", xlab="")
#plot 2
plot(datetime, voltage, type="l", ylab="Voltage", xlab="datetime")
#plot3
plot(datetime, sub_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_2, type="l", col="red")
lines(datetime, sub_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
#plot4
plot(datetime, globalreActivePower, type="l", ylab="Global Reactive Power", xlab="datetime")
dev.off()

