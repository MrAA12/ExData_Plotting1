po <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(po) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subpo <- subset(po,po$Date=="1/2/2007" | po$Date =="2/2/2007")
 
 # Transforming the Date and Time vars from characters into objects of type Date and POSIXlt respectively
 subpo$Date <- as.Date(subpo$Date, format="%d/%m/%Y")
 subpo$Time <- strptime(subpo$Time, format="%H:%M:%S")
 subpo[1:1440,"Time"] <- format(subpo[1:1440,"Time"],"2007-02-01 %H:%M:%S")
 subpo[1441:2880,"Time"] <- format(subpo[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
 
 
 # calling the basic plot function
 plot(subpo$Time,as.numeric(as.character(subpo$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png,filename="plot 3.png")
dev.off()

    