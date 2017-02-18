##----------source the R file that downloads and reads the data---------
source("readPowerData.R")

##----------make the plot
hist(as.numeric(powerConsumptionDataFiltered$Global_active_power),breaks=15,col="red",main="Global Active Power", xlab="Global Active Power(kilowatts", ylim=c(0,1200))
dev.copy(png,"plot1.png", width = 480, height = 480)
dev.off()