# For the first output file: "tidyReducedSetDC.txt"

The data come from experiments that have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each experiment, the following information was recorded:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment. 	

The file contains 10,299 rows and 68 columns. 

Each record contains the following variables:

* Subject column is numbered sequentially from 1 to 30.
* Activity column is a factor type that has 6 types as listed below. WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING
* Mean is a numeric type that has the average value for each measurement recorded in the experiment
* Standard deviation (StdDev) is a numeric type that has the standard deviation for each measurement recorded in the experiment

Activity variable is factor type. Subject variable is integer type. All the other variables are numeric type.

## The following is the complete list of variables.

* SubjectName                       
* ActivityName                      
* TimeBodyAccMeanX,Y,Z                  
* TimeBodyAccStdDevX,Y,Z
* TimeGravityAccMeanX,Y,Z               
* TimeGravityAccStdDevX,Y,Z             
* TimeBodyAccJerkMeanX,Y,Z              
* TimeBodyAccJerkStdDevX,Y,Z           
* TimeBodyGyroMeanX,Y,Z                 
* TimeBodyGyroStdDevX,Y,Z               
* TimeBodyGyroJerkMeanX,Y,Z             
* TimeBodyGyroJerkStdDevX,Y,Z           
* TimeBodyAccMagMean                
* TimeBodyAccMagStdDev"              
* TimeGravityAccMagMean
* TimeGravityAccMagStdDev
* TimeBodyAccJerkMagMean
* TimeBodyAccJerkMagStdDev
* TimeBodyGyroMagMean
* TimeBodyGyroMagStdDev
* TimeBodyGyroJerkMagMean
* TimeBodyGyroJerkMagStdDev
* FrequencyBodyAccMeanX
* FrequencyBodyAccMeanY
* FrequencyBodyAccMeanZ
* FrequencyBodyAccStdDevX
* FrequencyBodyAccStdDevY
* FrequencyBodyAccStdDevZ
* FrequencyBodyAccJerkMeanX
* FrequencyBodyAccJerkMeanY
* FrequencyBodyAccJerkMeanZ
* FrequencyBodyAccJerkStdDevX
* FrequencyBodyAccJerkStdDevY
* FrequencyBodyAccJerkStdDevZ
* FrequencyBodyGyroMeanX
* FrequencyBodyGyroMeanY
* FrequencyBodyGyroMeanZ
* FrequencyBodyGyroStdDevX
* FrequencyBodyGyroStdDevY
* FrequencyBodyGyroStdDevZ
* FrequencyBodyAccMagMean
* FrequencyBodyAccMagStdDev
* FrequencyBodyBodyAccJerkMagMean
* FrequencyBodyBodyAccJerkMagStdDev
* FrequencyBodyBodyGyroMagMean
* FrequencyBodyBodyGyroMagStdDev
* FrequencyBodyBodyGyroJerkMagMean
* FrequencyBodyBodyGyroJerkMagStdDev


# For the second output file: "tidyReducedMeanSetDC.txt"

The file contains 180 rows and 68 columns. 

This file has averaged variables for each subject and each activity. 

Each record contains the following variables:

* Subject column is numbered sequentially from 1 to 30.
* Activity column is a factor type that has 6 types as listed below. WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING
* Mean is a numeric type that has the average value for each measurement recorded in the experiment, grouped by subject and activity

## The following is the complete list of variables.

* SubjectName
* ActivityName
* MeanTimeBodyAccMeanX
* MeanTimeBodyAccMeanY
* MeanTimeBodyAccMeanZ
* MeanTimeBodyAccStdDevX
* MeanTimeBodyAccStdDevY
* MeanTimeBodyAccStdDevZ
* MeanTimeGravityAccMeanX
* MeanTimeGravityAccMeanY
* MeanTimeGravityAccMeanZ
* MeanTimeGravityAccStdDevX
* MeanTimeGravityAccStdDevY
* MeanTimeGravityAccStdDevZ
* MeanTimeBodyAccJerkMeanX
* MeanTimeBodyAccJerkMeanY
* MeanTimeBodyAccJerkMeanZ
* MeanTimeBodyAccJerkStdDevX
* MeanTimeBodyAccJerkStdDevY
* MeanTimeBodyAccJerkStdDevZ
* MeanTimeBodyGyroMeanX
* MeanTimeBodyGyroMeanY
* MeanTimeBodyGyroMeanZ
* MeanTimeBodyGyroStdDevX
* MeanTimeBodyGyroStdDevY
* MeanTimeBodyGyroStdDevZ
* MeanTimeBodyGyroJerkMeanX
* MeanTimeBodyGyroJerkMeanY
* MeanTimeBodyGyroJerkMeanZ
* MeanTimeBodyGyroJerkStdDevX
* MeanTimeBodyGyroJerkStdDevY
* MeanTimeBodyGyroJerkStdDevZ
* MeanTimeBodyAccMagMean
* MeanTimeBodyAccMagStdDev
* MeanTimeGravityAccMagMean
* MeanTimeGravityAccMagStdDev
* MeanTimeBodyAccJerkMagMean
* MeanTimeBodyAccJerkMagStdDev
* MeanTimeBodyGyroMagMean
* MeanTimeBodyGyroMagStdDev
* MeanTimeBodyGyroJerkMagMean
* MeanTimeBodyGyroJerkMagStdDev
* MeanFrequencyBodyAccMeanX
* MeanFrequencyBodyAccMeanY
* MeanFrequencyBodyAccMeanZ
* MeanFrequencyBodyAccStdDevX
* MeanFrequencyBodyAccStdDevY
* MeanFrequencyBodyAccStdDevZ
* MeanFrequencyBodyAccJerkMeanX
* MeanFrequencyBodyAccJerkMeanY
* MeanFrequencyBodyAccJerkMeanZ
* MeanFrequencyBodyAccJerkStdDevX
* MeanFrequencyBodyAccJerkStdDevY
* MeanFrequencyBodyAccJerkStdDevZ
* MeanFrequencyBodyGyroMeanX
* MeanFrequencyBodyGyroMeanY
* MeanFrequencyBodyGyroMeanZ
* MeanFrequencyBodyGyroStdDevX
* MeanFrequencyBodyGyroStdDevY
* MeanFrequencyBodyGyroStdDevZ
* MeanFrequencyBodyAccMagMean
* MeanFrequencyBodyAccMagStdDev
* MeanFrequencyBodyBodyAccJerkMagMean
* MeanFrequencyBodyBodyAccJerkMagStdDev
* MeanFrequencyBodyBodyGyroMagMean
* MeanFrequencyBodyBodyGyroMagStdDev
* MeanFrequencyBodyBodyGyroJerkMagMean
* MeanFrequencyBodyBodyGyroJerkMagStdDev
* MeanFrequencyBodyBodyGyroJerkMagMean
* MeanFrequencyBodyBodyGyroJerkMagStdDev
