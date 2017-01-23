plot1 <- function(myData) {
        # Plot 1 - Histogram of Global Active Power (kilowatts) (No NAs)
        
        png("plot1.png", width = 480, height = 480, units = "px")
        
        hist(myData$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
        
        dev.off()
}