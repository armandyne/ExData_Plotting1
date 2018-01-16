#setwd("D:\\coursera\\Exploratory Data Analysis\\ExData_Plotting1")

source("ImportAndLoadDataset.R")

hist(
     dataset$Global_active_power,
     main = "Global Active Power",
     xlab = "Global active Power(kilowatts)",
     col = "red"
)

dev.copy(png,
         file = "./plot1.png",
         width = 480,
         height = 480)
dev.off()
