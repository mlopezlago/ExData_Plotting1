##----------source the R file that downloads and reads the data---------
source("readPowerData.R")

##---------make the plots----------------------
par(mfrow=c(2,2))
# ------Global_active_power
plot(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Global_active_power, type="l", xlab="", ylab="Global Active Power",cex.lab=0.7, cex.axis=0.8,)

# ------Voltage
plot(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Voltage,type="l", ylab="Voltage", xlab="datetime", cex.lab=0.7, cex.axis=0.8,)

# -------Sub_metering
plot(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", cex.lab=0.7, cex.axis=0.8)
lines(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_2, col="red")
lines(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black","red", "blue"), cex=0.6, bty="n")

# ---------Global_reactive_power
plot(powerConsumptionDataFiltered$Time, powerConsumptionDataFiltered$Global_reactive_power,type="l",lwd=0.5,xlab="datetime", ylab="Global_reactive_power",cex.lab=0.8, cex.axis=0.8)

dev.copy(png,"plot4.png", width = 480, height = 480)
dev.off()