#I opened original file with Excel, filtered out desired dates, and saved it in a csv
rr <- read.csv("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Plots\\module4dataset.csv", sep=";", header=TRUE, stringsAsFactors = FALSE)
plot(rr$Global_active_power, type="l", xlab="", ylab = "Global Active Power (kilowatts)", xaxt="n")
axis(side=1, c(1,1440, 2880), c("Thu", "Fri", "Sat"))
