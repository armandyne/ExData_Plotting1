if (!file.exists("./data")) {
     dir.create("./data")
}

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfile <- file.path("./data", "household_power_consumption.zip")
datafile <- file.path("./data", "household_power_consumption.txt")

if (!file.exists(zipfile)) {
     download.file(url, zipfile)
}

if (!file.exists(datafile)) {
     unzip(zipfile, exdir = "./data")
}

library(readr)
library(lubridate)
library(dplyr)
library(tidyr)
dataset <-
     read_csv2("./data/household_power_consumption.txt", col_types = "ccccccccc") %>%
     mutate_at(3:9, as.double) %>%
     unite("DateTime", Date, Time, sep=" ") %>%
     mutate(DateTime = dmy_hms(DateTime)) %>%
     filter(year(DateTime) == 2007, month(DateTime) == 2, day(DateTime) >= 1 &
                 day(DateTime) <= 2)
