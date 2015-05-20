# Code book for tidyDataset.txt

## Subject Identifier
 * Subject
  * Integer value ranging from 1 to 30

## Activity
 * Activity
  * A character string describing the activity that was performed
   * WALKING 
   * WALKING_UPSTAIRS
   * WALKING_DOWNSTAIRS
   * SITTING
   * STANDING
   * LAYING

## Variable
 * Numeric values

### Time Domain Measurements

Time components of the accelerometer and gyroscope raw 3-axial signals that were:
 * Sampled at a constant rate of 50 Hz
 * Filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
 * Separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
 * Body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
 * The magnitude of these three-dimensional signals were calculated using the Euclidean norm

#### Accelerometer body acceleration measures in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * tBodyAccMeanX
 * tBodyAccMeanY
 * tBodyAccMeanZ
 * tBodyAccStdX
 * tBodyAccStdY
 * tBodyAccStdZ

#### Accelerometer gravity acceleration measures in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * tGravityAccMeanX
 * tGravityAccMeanY
 * tGravityAccMeanZ
 * tGravityAccStdX
 * tGravityAccStdY 
 * tGravityAccStdZ

#### Accelerometer measures for body acceleration jerk movements in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * tBodyAccJerkMeanX
 * tBodyAccJerkMeanY
 * tBodyAccJerkMeanZ
 * tBodyAccJerkStdX
 * tBodyAccJerkStdY
 * tBodyAccJerkStdZ

#### Magnitude for Accelerometer body acceleration, gravity acceleration and jerk movements Mean (mean) and standard deviations (std)

 * tBodyAccMagMean
 * tBodyAccMagStd
 * tGravityAccMag
 * tBodyAccJerkMagMean
 * tBodyAccJerkMagStd

#### Gyroscope body acceleration measures in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * tBodyGyroMeanX
 * tBodyGyroMeanY
 * tBodyGyroMeanZ
 * tBodyGyroStdX
 * tBodyGyroStdY
 * tBodyGyroStdZ


#### Gyroscope measures for jerk movements in the X, Y and Z axis, Means (mean) and standard deviations (std)

 * tBodyGyroJerkMeanX
 * tBodyGyroJerkMeanY
 * tBodyGyroJerkMeanZ
 * tBodyGyroJerkStdX
 * tBodyGyroJerkStdY
 * tBodyGyroJerkStdZ

#### Magnitude for Gyroscope body acceleration and jerk movements Mean (mean) and standard deviations (std)

 * tBodyGyroMagMean
 * tBodyGyroMagStd
 * tBodyGyroJerkMagMean
 * tBodyGyroJerkMagStd


### Frequency Domain Measurements

Frequency components of the accelerometer and gyroscope obtained from applying a FFT (Fast Fourier Transform) to all the calculated time domain signals described above.

#### Frequency for Accelerometer body acceleration measures in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * fBodyAccMeanX
 * fBodyAccMeanY
 * fBodyAccMeanZ
 * fBodyAccStdX
 * fBodyAccStdY
 * fBodyAccStdZ

#### Frequency for Accelerometer measures for body acceleration jerk movements in the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * fBodyAccJerkMeanX
 * fBodyAccJerkMeanY
 * fBodyAccJerkMeanZ
 * fBodyAccJerkStdX
 * fBodyAccJerkStdY
 * fBodyAccJerkStdZ

#### Frequency for Gyroscope body acceleration measures the X, Y and Z axis, Mean (mean) and standard deviations (std)

 * fBodyGyroMeanX
 * fBodyGyroMeanY
 * fBodyGyroMeanZ
 * fBodyGyroStdX
 * fBodyGyroStdY
 * fBodyGyroStdZ


#### Magnitude for frequency of Accelerometer body acceleration and jerk movements Mean (mean) and standard deviations (std)

 * fBodyAccMagMean
 * fBodyAccMagStd
 * fBodyAccJerkMagMean
 * fBodyAccJerkMagStd

#### Magnitude for frequency of Gyroscope body acceleration and jerk movements Mean (mean) and standard deviations (std)

 * fBodyGyroMagMean
 * fBodyGyroMagStd
 * fBodyGyroJerkMagMean
 * fBodyGyroJerkMagStd

## Average

Numeric values containing the mean for each variable for each subject for each activity, which is computed by the run_analysis.R script.
