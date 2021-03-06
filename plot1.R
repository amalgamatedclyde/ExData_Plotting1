# setwd("~/R/expdata/p1") #set path to location of dataset
household_power_consumption <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)
household_power_consumption$Date = as.Date(household_power_consumption$Date, "%d/%m/%Y")
two_day_subset <- subset(household_power_consumption, household_power_consumption$Date == "2007-02-01" | household_power_consumption$Date == "2007-02-02")
rm(household_power_consumption)
two_day_subset$Global_active_power <- as.numeric(two_day_subset$Global_active_power)
png(filename = "plot1.png", width = 480, height = 480, units = "px", pointsize = 12, bg = "white")
hist(two_day_subset$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off(dev.cur())
