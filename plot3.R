#a boxplot over sub-metering and weekdays
#convert to days
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
datetime
str(subSetData)
sub_1 <- as.numeric(subSetData$Sub_metering_1)
sub_2 <- as.numeric(subSetData$Sub_metering_2)
sub_3 <- as.numeric(subSetData$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, sub_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, sub_2, type="l", col="red")
lines(datetime, sub_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
