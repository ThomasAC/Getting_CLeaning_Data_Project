# coursera-getting-cleaning-data course project

Repository for Coursera "Getting and Cleaning Data Course Project" from John Hopkins University.

## Data

[source data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) 

[data descritpion](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


## Dependancies

Depend on reashape2 and plyr packages. Both packages need to be installed.

## Script

The run_analysis.R script performs the following steps in the current working directory **that needs to be set**.
The script can be run using the following `source("run_analysis.R")`

 * Checks for the presence of the original data. If not, download and unzip the source data.
 * Reads the provided features and activities label
 * Reads the test and train datasets from working directory, appending subjects and activities.
 * Merge the train and test datasets as a single dataset.
 * Replaces origianl activity labels (integer) by their name (character)
 * Labels the columns with the original names.
 * Tidy the column names on the selecting dataset ( Replacing -mean by Mean; -std by Std, removing unused brackets and BodyBody by Body, example: tBodyAcc-mean()-X repalced by tBodyAccMeanX)
 * Extracts only the measurements on the mean and standard deviation for each measurement, using the following regular expression '-(mean|std)[(]' on column names.
 * Computes the average of each variable for each activity and each subject
 * Creates a second, independent tidy dataset (tidyDataset) with the average of each variable for each activity and each subject.
 * Writes this tidy dataset to disk (tidyDataset.txt)

The code book for tidyDataset.txt is contained in the CodeBook.md file locatec in this repository.


