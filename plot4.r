#I opened original file with Excel, filtered out desired dates, and saved it in a csv
rr <- read.csv("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Plots\\module4dataset.csv", sep=";", header=TRUE, stringsAsFactors = FALSE)

par(mfrow = c(2,2))

#a
plot(rr$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)", xaxt="n")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))

#b
plot(rr$Voltage, type="l", xlab="datetime", ylab = "Voltage", xaxt="n")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))

#c
plot(rr$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
points(rr$Sub_metering_2, type="l", col = "red")
points(rr$Sub_metering_3, type="l", col = "blue")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))
legend("top", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),x.intersp=0.1,y.intersp=0.4,text.width = 280,bty="n", col = c("black", "red", "blue"), pt.cex=10, cex=0.5,lty=1)

#d
plot(rr$Global_reactive_power, type="l", xlab="datetime", ylab = "Global_reactive_power", xaxt="n")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))

