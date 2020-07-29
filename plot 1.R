 po <- read.table("household_power_consumption.txt",skip=1,sep=";")
 names(po) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
 subpo <- subset(po,po$Date=="1/2/2007" | po$Date =="2/2/2007")
 
 #calling the hist function
 hist(as.numeric(as.character(subpo$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
 dev.copy(png,filename="plot 1.png")
 dev.off()
 