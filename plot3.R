#setwd("D:\\coursera\\Exploratory Data Analysis\\ExData_Plotting1")

source("ImportAndLoadDataset.R")
Sys.setlocale("LC_TIME", "English")

plot(dataset$DateTime,
     dataset$Sub_metering_1, 
     type="l",
     xlab="",
     ylab="Energy sub metering")

lines(dataset$DateTime,
      dataset$Sub_metering_2,
      col="red")

lines(dataset$DateTime,
      dataset$Sub_metering_3,
      col="blue")

legend(x="topright", 
       lty=1,
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       cex=0.75,
       col=c("black","red","blue"),
       y.intersp = 0.2
       )

dev.copy(png,
         file = "./plot3.png",
         width = 480,
         height = 480)
dev.off()
