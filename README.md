# Week1Project1_PlotGraphs.R

## Required Libraries

* dplyr
* lubridate

## Usage
source("Week1Project1_PlotGraphs.R")

## Source Data

Website: UCI Machine Learning Repository (http://archive.ics.uci.edu/ml/)

Extracted Dataset:  "Individual household electric power consumption Data Set" 

https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip


## Description
Sourcing this R script will do the following

1. Load the data from the source
    a. Download .zip file from source location
    b. Extract files from .zip into working directory
    c. Load data from the household_power_consumption.zip ("?" identified as NA values)
2. Cleanup / Tidy the data
    a. Modify Date & Time Columns to be Date & Time formats respectively
    b. Extract Data Pertaining to February 1st and 2nd of 2007 only
3. Create a series of png files (480 px x 480 pixels) for each required graphical plot. 
    a. plot1.R
        * Create histogram of household global minute-averaged active power (in kilowatt) and save to file: "plot1.png"
    b. plot2.R
        * plot the Global Active Power (in kilowatt) against the 
    c. plot3.R
        * Plot each of the 3 types of Energy sub metering against date & time
    d. plot4.R
        * Create a 2 by 2 grid of plots
        
## Output
4 png files in the working directory with the following names:

+ plot1.png
+ plot2.png
+ plot3.png
+ plot4.png
