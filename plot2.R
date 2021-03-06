testdata <- read.table("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE)
outdata <- subset(testdata, Date=="1/2/2007"|Date=="2/2/2007")
png("plot2.png", width = 480, height = 480)

plot(as.numeric(outdata$Global_active_power), type="l", axes=FALSE, ylab="Global Active Power (kilowatts)",xlab="")
at_tick <- c(0, 1440, 2880)
axis(side = 1, at = at_tick, labels = c("Thu","Fri","Sat"))
axis(2, at=c(0,2,4,6))
box("plot", col="black")

dev.off()