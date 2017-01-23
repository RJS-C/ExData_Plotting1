plot4 <- function(myData) {
        png("plot4.png", width = 480, height = 480, units = "px")
        
        # Set the graphing grid to a 2 by 2.  Using mfrow will cause order of output 
        # fill a single full row (left to right) before moving down to the next.
        par(mfrow = c(2,2))
        
        # Plot upper left hand quadrant:  Global Active Power - i.e. plot2
        with(myData, plot(DateAndTime,Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = ""))
        
        # Plot upper right hand quadrant:  datetime vs Voltage
        with(myData, plot(DateAndTime,Voltage, type = "l", ylab = "Voltage", xlab = "datetime"))
        
        # Plot lower left hand quadrant:  Energy sub metering - i.e. plot3
        with(myData, plot(DateAndTime,Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
        with(myData, lines(DateAndTime,Sub_metering_2, type = "l", col = "red"))
        with(myData, lines(DateAndTime,Sub_metering_3, type = "l", col = "blue"))
        legend("topright", col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1)
        
        # Plot lower right hand quadrant:  datetime vs Global_reactive_power
        with(myData, plot(DateAndTime,Global_reactive_power, type="l", xlab = "datetime"))
        
        dev.off()
}