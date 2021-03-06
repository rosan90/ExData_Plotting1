testdata <- read.table("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE)
outdata <- subset(testdata, Date=="1/2/2007"|Date=="2/2/2007")
png("plot1.png", width = 480, height = 480)

hist(as.numeric(outdata$Global_active_power),xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")

dev.off()