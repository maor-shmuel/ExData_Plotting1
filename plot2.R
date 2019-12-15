raw_data <- read.csv("household_power_consumption.txt",sep=';')
raw_data$Date <- as.character(raw_data$Date)
filtered_data <- raw_data[raw_data$Date == "1/2/2007" | raw_data$Date == "2/2/2007",]
filtered_data$Global_active_power <- as.numeric(as.character(filtered_data$Global_active_power))
plot_time <- strptime(paste0(filtered_data$Date,filtered_data$Time),"%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
plot(plot_time,ex1_filtered$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()