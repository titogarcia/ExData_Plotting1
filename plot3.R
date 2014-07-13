data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png("plot3.png")

plot(data$datetime,
     data$Sub_metering_1,
     type="n",
     xlab="",
     ylab="Energy sub metering")

lines(data$datetime,
      data$Sub_metering_1,
      col="black")

lines(data$datetime,
      data$Sub_metering_2,
      col="red")

lines(data$datetime,
      data$Sub_metering_3,
      col="blue")

legend("topright",
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"),
       lty="solid")

dev.off()