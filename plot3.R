plot3 <- function(myData) {
        # Plot 1 - Histogram of Global Active Power (kilowatts) (No NAs)
        
        png("plot3.png", width = 480, height = 480, units = "px")
        
        with(myData, plot(DateAndTime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
        with(myData, lines(DateAndTime,Sub_metering_2, type = "l", col = "red"))
        with(myData, lines(DateAndTime,Sub_metering_3, type = "l", col = "blue"))
        legend("topright", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1)
        
        dev.off()
}