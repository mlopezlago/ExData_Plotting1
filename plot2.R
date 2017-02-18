##----------source the R file that downloads and reads the data---------
source("readPowerData.R")

##---------make the plot
plot(powerConsumptionDataFiltered$Time, as.numeric(powerConsumptionDataFiltered$Global_active_power),type="l", ylab="Global Active Power (kilowatts)",xlab="", cex.lab=0.8, cex.axis=0.8)
dev.copy(png,"plot2.png", width = 480, height = 480)
dev.off()
