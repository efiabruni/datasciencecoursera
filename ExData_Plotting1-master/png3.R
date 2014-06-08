png3<-function(){
	##Please see sub.R for subroutines / shared code
	source("sub.R")
	x<-readfile()	
	y<-DateTime(x)
	
	png(file="png3.png")
	par(bg="transparent")
	with(y,plot3(y))
	setaxis()
	legend("topright",lty="solid",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	dev.off()
	}