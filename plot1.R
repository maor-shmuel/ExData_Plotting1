raw_data <- read.csv("household_power_consumption.txt",sep=';')
raw_data$Date <- as.character(raw_data$Date)
filtered_data <- raw_data[raw_data$Date == "1/2/2007" | raw_data$Date == "2/2/2007",]
filtered_data$Global_active_power <- as.numeric(as.character(filtered_data$Global_active_power))
png(filename = "plot1.png", width = 480, height = 480)
hist(filtered_data$Global_active_power, main="Global Active Power", col="red", xlab ="Global Active Power (kilowatts)")
dev.off()