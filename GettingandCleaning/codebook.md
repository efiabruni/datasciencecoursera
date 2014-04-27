#Codebook Getting and Cleaning Data Peer Assignment

##Original Data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
-'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##Variable describtion
*Subject*
-ID Numbers for Subjects
-Factor
-Levels: 1-30

*Activity*
-Activity the subjects were performing
-Factor
-Levels: "walking", "walking _ upstairs", "walking _ downstairs", "sitting", "standing", "laying"

*Measurements*
-Average of the mean (mean()) and standart deviation (sd()) of measurements 
-numeric

tBodyAcc-mean()-X: Body acceleration, x-axis, average of mean
tBodyAcc-mean()-Y: Body acceleration, y-axis, average of mean
tBodyAcc-mean()-Z: Body acceleration, z-axis, average of mean 
tBodyAcc-sd()-X: Body acceleration, x-axis, average of standart deviation 
tBodyAcc-sd()-Y: Body acceleration, y-axis, average of standart deviation 
tBodyAcc-sd()-X: Body acceleration, z-axis, average of standart deviation

tGravityAcc-mean()-X: Gravity acceleration, x-axis, average of mean 
tGravityAcc-mean()-Y: Gravity acceleration, y-axis, average of mean 
tGravityAcc-mean()-Z: Gravity acceleration, z-axis, average of mean
tGravityAcc-sd()-X: Gravity acceleration, x-axis, average of standart deviation
tGravityAcc-sd()-Y: Gravity acceleration, y-axis, average of standart deviation 
tGravityAcc-sd()-Z: Gravity acceleration, z-axis, average of standart deviation 

tBodyAccJerk-mean()-X: Jerk signals from the accelerometer, x-axis, average of mean
tBodyAccJerk-mean()-Y: Jerk signals from the accelerometer, y-axis, average of mean
tBodyAccJerk-mean()-Z: Jerk signals from the accelerometer, z-axis, average of mean
tBodyAccJerk-std()-X: Jerk signals from the accelerometer, x-axis, average of standart deviation
tBodyAccJerk-std()-Y: Jerk signals from the accelerometer, y-axis, average of standart deviatio
tBodyAccJerk-std()-Z: Jerk signals from the accelerometer, z-axis, average of standart deviatio

tBodyGyro-mean()-X: Signals from the gyroscope, x-axis, average of mean
tBodyGyro-mean()-Y: Signals from the gyroscope, y-axis, average of mean
tBodyGyro-mean()-Z: Signals from the gyroscope, z-axis, average of mean
tBodyGyro-std()-X: Signals from the gyroscope, x-axis, average of standart deviation
tBodyGyro-std()-Y: Signals from the gyroscope, y-axis, average of standart deviation
tBodyGyro-std()-Z: Signals from the gyroscope, z-axis, average of standart deviation

tBodyGyroJerk-mean()-X: Jerk signals from the gyroscope, x-axis, average of mean
tBodyGyroJerk-mean()-Y: Jerk signals from the gyroscope, y-axis, average of mean
tBodyGyroJerk-mean()-Z: Jerk signals from the gyroscope, z-axis, average of mean
tBodyGyroJerk-std()-X: Jerk signals from the gyroscope, x-axis, average of standart deviation
tBodyGyroJerk-std()-Y: Jerk signals from the gyroscope, y-axis, average of standart deviation
tBodyGyroJerk-std()-Z: Jerk signals from the gyroscope, z-axis, average of standart deviation

tBodyAccMag-mean(): Magnitude of body acceleration, average of mean
tBodyAccMag-std(): Magnitude of body acceleration, average of standart deviation

tGravityAccMag-mean(): Magnitude of gravity acceleration, average of mean
tGravityAccMag-std(): Magnitude of gravity acceleration, average of standart deviation

tBodyAccJerkMag-mean(): Magnitude of jerk signals from the accelerometer, average of mean
tBodyAccJerkMag-sd(): Magnitude of jerk signals from the accelerometer, average of standart deviation

tBodyGyroMag-mean(): Magnitude of signals from the gyroscope, average of mean
tBodyGyroMag-sd(): Magnitude of signals from the gyroscope, average of standart deviation

tBodyGyroJerkMag-mean(): Magnitude of jerk signals from the gyroscope, average of mean
tBodyGyroJerkMag-sd(): Magnitude of jerk signals from the gyroscope, average of standart deviation

fBodyAcc-mean()-X: Fast Fourier Transform of body acceleration, x-axis, average of mean
fBodyAcc-mean()-Y: Fast Fourier Transform of body acceleration, y-axis, average of mean
fBodyAcc-mean()-Z: Fast Fourier Transform of body acceleration, z-axis, average of mean 
fBodyAcc-sd()-X: Fast Fourier Transform of body acceleration, x-axis, average of standart deviation 
fBodyAcc-sd()-Y: Fast Fourier Transform of body acceleration, y-axis, average of standart deviation 
fBodyAcc-sd()-X: Fast Fourier Transform of body acceleration, z-axis, average of standart deviation

fBodyAccJerk-mean()-X: Fast Fourier Transform of jerk signals from the accelerometer, x-axis, average of mean
fBodyAccJerk-mean()-Y: Fast Fourier Transform of jerk signals from the accelerometer, y-axis, average of mean
fBodyAccJerk-mean()-Z: Fast Fourier Transform of jerk signals from the accelerometer, z-axis, average of mean
fBodyAccJerk-std()-X: Fast Fourier Transform of jerk signals from the accelerometer, x-axis, average of standart deviation
fBodyAccJerk-std()-Y: Fast Fourier Transform of jerk signals from the accelerometer, y-axis, average of standart deviatio
fBodyAccJerk-std()-Z: Fast Fourier Transform of jerk signals from the accelerometer, z-axis, average of standart deviatio

fBodyGyro-mean()-X: Fast Fourier Transform of signals from the gyroscope, x-axis, average of mean
fBodyGyro-mean()-Y: Fast Fourier Transform of signals from the gyroscope, y-axis, average of mean
fBodyGyro-mean()-Z: Fast Fourier Transform of signals from the gyroscope, z-axis, average of mean
fBodyGyro-std()-X: Fast Fourier Transform of signals from the gyroscope, x-axis, average of standart deviation
fBodyGyro-std()-Y: Fast Fourier Transform of signals from the gyroscope, y-axis, average of standart deviation
fBodyGyro-std()-Z: Fast Fourier Transform of signals from the gyroscope, z-axis, average of standart deviation

fBodyAccMag-mean(): Fast Fourier Transform of magnitude of body acceleration, average of mean
fBodyAccMag-std(): Fast Fourier Transform of magnitude of body acceleration, average of standart deviation

fBodyAccJerkMag-mean(): Fast Fourier Transform of magnitude of jerk signals from the accelerometer, average of mean
fBodyAccJerkMag-sd(): Fast Fourier Transform of magnitude of jerk signals from the accelerometer, average of standart deviation

fBodyGyroMag-mean(): Fast Fourier Transform of magnitude of signals from the gyroscope, average of mean
fBodyGyroMag-sd(): Fast Fourier Transform of magnitude of signals from the gyroscope, average of standart deviation

fBodyGyroJerkMag-mean(): Fast Fourier Transform of magnitude of jerk signals from the gyroscope, average of mean
fBodyGyroJerkMag-sd(): Fast Fourier Transform of magnitude of jerk signals from the gyroscope, average of standart deviation

