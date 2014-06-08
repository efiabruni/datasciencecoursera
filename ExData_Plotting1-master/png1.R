png1<-function(){
	##Please see sub.R for subroutines / shared code
	source("sub.R")
	x<-readfile()
	
	png(file="png1.png")
	par(bg="transparent")
	with(x,hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)"))
	dev.off()
	}
 