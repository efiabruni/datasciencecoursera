##subroutines

readfile<-function(){
	##read and subset the data
	x<-read.table("household_power_consumption.txt", sep=";", na.strings="?", skip=66636, nrows=2880, header=TRUE)
	names(x)<-names(read.table("household_power_consumption.txt", sep=";", na.strings="?", nrows=1, header=TRUE))
	
	x
	}
	
DateTime<-function(x){
	##add the datetime variable
	DateTime<-paste(x$Date,x$Time)
	datetime<-strptime(DateTime,"%d/%m/%Y %H:%M:%S")

	y<-cbind(x,datetime)
	y
}
	
setaxis<-function(){
		##set the x axis with days
		axis(side=1,at=seq(0,2880,by=1440),labels=c("Thu","Fri","Sat"))
}

plot2<-function(x){
	#plot 2
	plot(x$datetime,x$Global_active_power, type="l", xlab="", ylab="")
}

plot3<-function(x){
	#plot 3
	plot(x$datetime,x$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
	lines(x$datetime,x$Sub_metering_2,col="red")
	lines(x$datetime,x$Sub_metering_3,col="blue")	
}
	