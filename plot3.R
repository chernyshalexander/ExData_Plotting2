setwd("d://Education//Data Science//Exploratory Data Analysis//ExData_Plotting2//")
subset <- neiData[neiData$fips == "24510", ] 
library(ggplot2)
par("mar"=c(5.1, 4.5, 4.1, 2.1))
png(filename = "graph/plot3.png", 
    width = 480, height = 480, 
    units = "px")
g <- ggplot(subset, aes(year, Emissions, color = type))
g + geom_line(stat = "summary", fun.y = "sum") +
  ylab(expression('Total PM'[2.5]*" Emissions")) +
  ggtitle("Total Emissions in Baltimore City from 1999 to 2008")
dev.off()