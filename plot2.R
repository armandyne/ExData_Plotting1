#setwd("D:\\coursera\\Exploratory Data Analysis\\ExData_Plotting1")

source("ImportAndLoadDataset.R")
Sys.setlocale("LC_TIME", "English")

plot(dataset$DateTime,
     dataset$Global_active_power,
     type = "l",
     ylab = "Global Active Power(kilowatts)",
     xlab = "")

dev.copy(png,
         file = "./plot2.png",
         width = 480,
         height = 480)
dev.off()