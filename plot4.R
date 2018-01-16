source("ImportAndLoadDataset.R")
Sys.setlocale("LC_TIME", "English")

par(mfrow = c(2, 2))

plot(
     dataset$DateTime,
     dataset$Global_active_power,
     type = "l",
     ylab = "Global Active Power",
     xlab = ""
)

plot(
     dataset$DateTime,
     dataset$Voltage,
     type = "l",
     ylab = "Voltage",
     xlab = "datetime"
)

plot(
     dataset$DateTime,
     dataset$Sub_metering_1,
     type = "l",
     xlab = "",
     ylab = "Energy sub metering"
)

lines(dataset$DateTime,
      dataset$Sub_metering_2,
      col = "red")

lines(dataset$DateTime,
      dataset$Sub_metering_3,
      col = "blue")

legend(
     x = "topright",
     lty = 1,
     legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
     cex = 0.75,
     col = c("black", "red", "blue"),
     y.intersp = 0.7
)

plot(
     dataset$DateTime,
     dataset$Global_reactive_power,
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime"
)

dev.copy(png,
         file = "./plot4.png",
         width = 480,
         height = 480)
dev.off()