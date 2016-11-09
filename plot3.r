#I opened original file with Excel, filtered out desired dates, and saved it in a csv
rr <- read.csv("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Plots\\module4dataset.csv", sep=";", header=TRUE, stringsAsFactors = FALSE)

plot(rr$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering", xaxt = "n")
points(rr$Sub_metering_2, type="l", col = "red")
points(rr$Sub_metering_3, type="l", col = "blue")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),y.intersp=0.5,x.intersp = 0.2,text.width= 600,cex=0.5 ,pt.cex=3,col = c("black", "red", "blue"),lty=1)
