##----------source the R file that downloads and reads the data---------
source("readPowerData.R")

##---------make the plot
plot(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_1,type="l", xlab = "", ylab="Energy sub metering", cex=0.8)
lines(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_2, col="red")
lines(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1,1), col=c("black","red", "blue"), cex=0.8)

dev.copy(png,"plot3.png", width = 480, height = 480)
dev.off()