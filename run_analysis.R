## run_analysis.R


## Check if source data are present (zipped and/or unzipped). If not, downloads and/or unzip source data
filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
if (!file.exists(filename)){
      fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
      download.file(fileURL, filename, method="curl") ## specify othe methd for windows?
}  
if (!file.exists("UCI HAR Dataset")) { 
      unzip(filename) 
}

## Read features and activities label
features <- read.table("./UCI HAR Dataset/features.txt")
features[,2] <- as.character(features[,2])
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities[,2] <- as.character(activities[,2])


## Read in data, path from working directory containing original dataset
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("./UCI HAR Dataset/train/y_train.txt")
trainSubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("./UCI HAR Dataset/test/y_test.txt")
testSubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Add Subjects and Activities to train and test values
train <- cbind(trainSubjects, trainActivities, train )
test <- cbind(testSubjects, testActivities, test)
## Combine datasets
combined <- rbind(train, test)
## Set Subjects as factors
combined[,1] <- as.factor(combined[,1])
## Set Activities as factor and replace Activities coding number with corresponding names
combined[,2]<- factor(combined[,1], levels = activities[,1], labels = activities[,2])
## Set names for each column
colnames(combined) <- c("Subject", "Activity",features[,2])

## Extract only the data on mean and standard deviation
featuresToExtract <- grep('-(mean|std)[(]', colnames(combined))
## Creates datasets with the relevant columns 
dataMeanSd <- combined[,c(1,2,featuresToExtract)]

## Tidy the names
featuresToExtract_names <- colnames(combined)[featuresToExtract] 
featuresToExtract_names <- gsub('-mean', 'Mean', featuresToExtract_names)
featuresToExtract_names <- gsub('-std', 'Std', featuresToExtract_names)
featuresToExtract_names <- gsub('[-()]', '', featuresToExtract_names)
featuresToExtract_names <- gsub('BodyBody', 'Body', featuresToExtract_names)
colnames(dataMeanSd)[3:ncol(dataMeanSd)] <- featuresToExtract_names



## Creates a second, independent tidy data set with the average of
##    each variable for each activity and each subject.
## load packages
library(reshape2)
library(plyr)

melted <- melt(dataMeanSd, id.vars=c("Subject", "Activity"), 
               measure.vars = colnames(dataMeanSd)[3:ncol(dataMeanSd)])
tidyData <- ddply(melted, .(Subject, Activity, variable), 
                   summarize, average = mean(value))

## Write table to disk
write.table(tidyData, file = "tidyDataset.txt", row.names = FALSE)


