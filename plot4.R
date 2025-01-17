raw_data <- read.csv("household_power_consumption.txt",sep=';')
raw_data$Date <- as.character(raw_data$Date)
filtered_data <- raw_data[raw_data$Date == "1/2/2007" | raw_data$Date == "2/2/2007",]
filtered_data$Sub_metering_1 <- as.numeric(as.character(filtered_data$Sub_metering_1))
filtered_data$Sub_metering_2 <- as.numeric(as.character(filtered_data$Sub_metering_2))
filtered_data$Sub_metering_3 <- as.numeric(as.character(filtered_data$Sub_metering_3))
filtered_data$Global_active_power <- as.numeric(as.character(filtered_data$Global_active_power))
filtered_data$Global_reactive_power <- as.numeric(as.character(filtered_data$Global_reactive_power))
filtered_data$Voltage <- as.numeric(as.character(filtered_data$Voltage))
png(filename = "plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
plot(plot_time,filtered_data$Global_active_power, ylab = "Global Active Power", xlab = "", type = "l")
plot(plot_time,filtered_data$Voltage, ylab = "Voltage", xlab = "", type = "l")
plot(plot_time,filtered_data$Sub_metering_1, ylab = "Energy sub metering", xlab = "", type = "l", col="gray")
lines(plot_time,filtered_data$Sub_metering_2, ylab = "Energy sub metering", xlab = "", type = "l", col="red")
lines(plot_time,filtered_data$Sub_metering_3, ylab = "Energy sub metering", xlab = "", type = "l", col="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("gray","red","blue"), lty = 1, cex = 0.75)
plot(plot_time,filtered_data$Global_reactive_power, ylab = "Global rective Power", xlab = "", type = "l")
dev.off()