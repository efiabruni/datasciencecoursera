run_analysis<-function(){
	##loading needed library
	library("reshape2")
	
	##Getting Columnames from features.txt and colums we want for analysis (means and sd)
	myVarnames<-read.table("UCI HAR Dataset/features.txt",nrows=562)
	myCols<-myVarnames[grep("mean\\(\\)|std\\(\\)",myVarnames[,2]),1]
	myColnames<-myVarnames[,2]

	#read in files from test group (subjects, activity, set)
	#subset test set to get only means and sd, set column names
	ta<-read.table("UCI HAR Dataset/test/subject_test.txt", col.names="Subject", colClasses="factor", nrows=2950 )
	tb<-read.table("UCI HAR Dataset/test/y_test.txt", col.names="Activity", colClasses="factor", nrows=2950 )
	tc<-read.table("UCI HAR Dataset/test/X_test.txt", col.names=myColnames, colClasses="numeric", nrows=2950)[,myCols]
	
	##combine datasets from test group
	td<-cbind(ta, tb, tc)
	
	#read in files from train group (subjects, activity, set)
	#subset train set to get only means and sd, set column names
	tra<-read.table("UCI HAR Dataset/train/subject_train.txt", col.names="Subject", colClasses="factor", nrows=7355)
	trb<-read.table("UCI HAR Dataset/train/y_train.txt", col.names="Activity", colClasses="factor", nrows=7355)
	trc<-read.table("UCI HAR Dataset/train/X_train.txt", col.names=myColnames, colClasses="numeric", nrows=7355)[,myCols]
	
	##combine datasets from train group
	trd<-cbind(tra, trb, trc)
	
	##combine test and train dataset
	myAll<-rbind(td,trd)
	#change levels for activities to descriptive levels
	levels(myAll[,2])<-c("walking","walking_upstairs","walking_downstairs","sitting","standing","laying")
	
	#reshape dataset and aggregate means
	myMelt<-melt(myAll,id=(c("Subject","Activity")))
	myCast<-dcast(myMelt, Subject+Activity~variable,mean)
	
	##Sorting numerically after subjects
	myCast$Subject<-as.numeric(myCast$Subject)
	mySort<-myCast[order(myCast$Subject),]
	
	##finally print!
	write.table(mySort, file="tidy.txt", sep=" ", row.names=FALSE, col.names=TRUE)
	print("The tidy dataset has been saved in your working directory as tidy.txt")

}
