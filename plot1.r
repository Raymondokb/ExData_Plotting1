#I opened original file in Excel, filtered out the requested dates, and saved it in a csv format
rr <- read.csv("D:\\Users\\msboon\\Desktop\\For Data science coursera\\Plots\\module4dataset.csv", sep=";", header=TRUE, stringsAsFactors = FALSE)
hist(rr$Global_active_power, col="red", breaks = seq(0,8,0.5),xlab="Global Active Power (kilowatts)", main="Global Active Power")
