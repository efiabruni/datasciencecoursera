png2<-function(){
	##Please see sub.R for subroutines / shared code
	source("sub.R")
	x<-readfile()	
	y<-DateTime(x)
	
	png(file="png2.png")
	par(bg="transparent")
	with(y,plot2(y))
	title(ylab="Global Active Power (kilowatts)")
	setaxis()
	dev.off()
 }
	