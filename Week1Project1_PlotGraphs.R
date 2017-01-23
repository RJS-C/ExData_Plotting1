# Loading the Data Set Into R
library(lubridate)
library(dplyr)

source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")

# Download Data
success <- FALSE

# Create a directory into which to download & unzip the data if one does not exist
if (dir.exists("./data") == FALSE) {
        dir.create("./data")
}

print("Downloading File...")
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, "./data/zippedFile.zip")

print("Unpacking .zip File...")
# Unpack the data
if (file.exists("./data/zippedFile.zip") == TRUE){
        unzippedFiles <- unzip("./data/zippedFile.zip", exdir = "./data", overwrite = TRUE)
        
        if (length(unzippedFiles) > 0) {
                success <- TRUE
        }
}

if(success == TRUE) {
        # Load all of the data from the source .txt file.  "?" is to be interpreted as NA.
        origdata <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
        
        # Convert Date & Time Columns
        origdata$Date <- dmy(origdata$Date)
        origdata$Time <- hms(origdata$Time)
        
        # Extract Only Dates 2007-02-01 and 2007-02-02
        # It is possible to read only these bits of data but I am not sure how to do that as of yet.
        myData <- subset(origdata,between(Date, ymd("2007-02-01"), ymd("2007-02-02")))
        myData$DateAndTime <- myData$Date + myData$Time
        
        # Construct the plot & save to png file with a width of 480 pixels & height of 480 pixels
        print("Processing Plots")
        plot1(myData)
        plot2(myData)
        plot3(myData)
        plot4(myData)
        print("Complete")
} else
{
        print("Download / Extraction of File Failed.")
}



