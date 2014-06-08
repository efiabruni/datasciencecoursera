png4<-function(){
	##Please see sub.R for subroutines / shared code
	source("sub.R")
	x<-readfile()	
	y<-DateTime(x)
	
	png(file="png4.png")
	par(mfrow=c(2,2),  ps=11, bg="transparent") 
	with(y,{
		plot2(y)
		setaxis()
		title(ylab="Global Active Power")
		plot(datetime,Voltage, type="l")
		plot3(y)
		legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
		plot(datetime,Global_reactive_power,type="l")
		})
	dev.off()
}