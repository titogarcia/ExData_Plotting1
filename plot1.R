data <- read.csv("household_power_consumption.txt", sep=";", na.strings="?")
data <- data[data$Date=="1/2/2007" | data$Date=="2/2/2007",]
data$datetime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png("plot1.png")

hist(data$Global_active_power,
     col="red",
     main="Global Active Power", 
     xlab="Global Active Power (kilowatts)")

dev.off()