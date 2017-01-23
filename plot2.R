plot2 <- function(myData) {
        # Plot 1 - Histogram of Global Active Power (kilowatts) (No NAs)
        
        png("plot2.png", width = 480, height = 480, units = "px")
        
        with(myData, plot(DateAndTime,Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
        
        dev.off()
}