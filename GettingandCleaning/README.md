#Getting and Cleaning Data Peer Assignment

##In this analysis data from the following source is used:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

You can _download_ the data as a zip file at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Please unzip it in your working directory (The folder will be called:"UCI HAR Dataset").
The R library _reshape2_ is needed for this analysis (download package and dependencies in R by typing "install.packages("reshape2")")

##Description of the script 
_function_
run_analysis

_what it does_
For the purpose of this analysis the subject, activity and measurement files of the test and train group are combined and the columns containing the means (mean()) and standard deviation (sd()) of the measurements are selected (66 columns).

To make the dataset more user friendly columnnames are given and the activity variable is recoded to descriptive variable names.

The dataset is then summarized by calculating theaverage of the mean and sd of the measurements per subject and activity and printed to the file tidy.txt

The dataset has a " " as a seperator, columnnames, but no rownames and consitst of 68 columns and 180 rows.

