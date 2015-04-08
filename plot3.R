testdata <- read.table("household_power_consumption.txt", sep=";", header=TRUE,stringsAsFactors=FALSE)
outdata <- subset(testdata, Date=="1/2/2007"|Date=="2/2/2007")
png("plot3.png", width = 480, height = 480)

plot(as.numeric(outdata$Sub_metering_1), type="l", axes=FALSE, ylab="Energy sub metering", xlab="")
lines(as.numeric(outdata$Sub_metering_2),col="red",lwd=1)
lines(as.numeric(outdata$Sub_metering_3),col="blue",lwd=1)
at_tick <- c(0, 1440, 2880)
axis(side = 1, at = at_tick, labels = c("Thu","Fri","Sat"))
axis(2, at=c(0,10,20,30))
box("plot", col="black")
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),  lty=c(1,1,1), lwd=c(1,1,1),col=c("black","red","blue")) 

dev.off()