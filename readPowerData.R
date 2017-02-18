##-------download the zip-------------------
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/exdata_data_household_power_consumption.zip")
unzip(zipfile="./data/exdata_data_household_power_consumption.zip",exdir="./data")

##------------read in, select and format the training and test data---------------

powerConsumptionData <- read.table("./data/household_power_consumption.txt", sep=";", header=TRUE, na.strings = "?")

powerConsumptionDataFiltered <- powerConsumptionData[powerConsumptionData$Date=="1/2/2007" | powerConsumptionData$Date=="2/2/2007",]

##head(powerConsumptionDataFiltered)

powerConsumptionDataFiltered$Date <- as.Date(powerConsumptionDataFiltered$Date, format="%d/%m/%Y")

powerConsumptionDataFiltered$Time <- strptime(paste(powerConsumptionDataFiltered$Date, powerConsumptionDataFiltered$Time), format="%Y-%m-%d %H:%M:%S")