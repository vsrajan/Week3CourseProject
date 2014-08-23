####Codebook for the tidy file output by run-analysis
The output of run_analysis is a space delimited text file with the following columns, ordered as shown below:
* activity_code -
A value between 1 and 6
* subject - 
The subject on which the measurements were made
* Activity_Description - 
One of these values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The following 86 columns correspond to the averages of the mean and std measurements taken for that subject and activity combination.
* Average_of_tBodyAcc-mean()-X
* Average_of_tBodyAcc-mean()-Y
* Average_of_tBodyAcc-mean()-Z
* Average_of_tBodyAcc-std()-X
* Average_of_tBodyAcc-std()-Y
* Average_of_tBodyAcc-std()-Z
* Average_of_tGravityAcc-mean()-X
* Average_of_tGravityAcc-mean()-Y
* Average_of_tGravityAcc-mean()-Z
* Average_of_tGravityAcc-std()-X
* Average_of_tGravityAcc-std()-Y
* Average_of_tGravityAcc-std()-Z
* Average_of_tBodyAccJerk-mean()-X
* Average_of_tBodyAccJerk-mean()-Y
* Average_of_tBodyAccJerk-mean()-Z
* Average_of_tBodyAccJerk-std()-X
* Average_of_tBodyAccJerk-std()-Y
* Average_of_tBodyAccJerk-std()-Z
* Average_of_tBodyGyro-mean()-X
* Average_of_tBodyGyro-mean()-Y
* Average_of_tBodyGyro-mean()-Z
* Average_of_tBodyGyro-std()-X
* Average_of_tBodyGyro-std()-Y
* Average_of_tBodyGyro-std()-Z
* Average_of_tBodyGyroJerk-mean()-X
* Average_of_tBodyGyroJerk-mean()-Y
* Average_of_tBodyGyroJerk-mean()-Z
* Average_of_tBodyGyroJerk-std()-X
* Average_of_tBodyGyroJerk-std()-Y
* Average_of_tBodyGyroJerk-std()-Z
* Average_of_tBodyAccMag-mean()
* Average_of_tBodyAccMag-std()
* Average_of_tGravityAccMag-mean()
* Average_of_tGravityAccMag-std()
* Average_of_tBodyAccJerkMag-mean()
* Average_of_tBodyAccJerkMag-std()
* Average_of_tBodyGyroMag-mean()
* Average_of_tBodyGyroMag-std()
* Average_of_tBodyGyroJerkMag-mean()
* Average_of_tBodyGyroJerkMag-std()
* Average_of_fBodyAcc-mean()-X
* Average_of_fBodyAcc-mean()-Y
* Average_of_fBodyAcc-mean()-Z
* Average_of_fBodyAcc-std()-X
* Average_of_fBodyAcc-std()-Y
* Average_of_fBodyAcc-std()-Z
* Average_of_fBodyAcc-meanFreq()-X
* Average_of_fBodyAcc-meanFreq()-Y
* Average_of_fBodyAcc-meanFreq()-Z
* Average_of_fBodyAccJerk-mean()-X
* Average_of_fBodyAccJerk-mean()-Y
* Average_of_fBodyAccJerk-mean()-Z
* Average_of_fBodyAccJerk-std()-X
* Average_of_fBodyAccJerk-std()-Y
* Average_of_fBodyAccJerk-std()-Z
* Average_of_fBodyAccJerk-meanFreq()-X
* Average_of_fBodyAccJerk-meanFreq()-Y
* Average_of_fBodyAccJerk-meanFreq()-Z
* Average_of_fBodyGyro-mean()-X
* Average_of_fBodyGyro-mean()-Y
* Average_of_fBodyGyro-mean()-Z
* Average_of_fBodyGyro-std()-X
* Average_of_fBodyGyro-std()-Y
* Average_of_fBodyGyro-std()-Z
* Average_of_fBodyGyro-meanFreq()-X
* Average_of_fBodyGyro-meanFreq()-Y
* Average_of_fBodyGyro-meanFreq()-Z
* Average_of_fBodyAccMag-mean()
* Average_of_fBodyAccMag-std()
* Average_of_fBodyAccMag-meanFreq()
* Average_of_fBodyBodyAccJerkMag-mean()
* Average_of_fBodyBodyAccJerkMag-std()
* Average_of_fBodyBodyAccJerkMag-meanFreq()
* Average_of_fBodyBodyGyroMag-mean()
* Average_of_fBodyBodyGyroMag-std()
* Average_of_fBodyBodyGyroMag-meanFreq()
* Average_of_fBodyBodyGyroJerkMag-mean()
* Average_of_fBodyBodyGyroJerkMag-std()
* Average_of_fBodyBodyGyroJerkMag-meanFreq()
* Average_of_angle(tBodyAccMean,gravity)
* Average_of_angle(tBodyAccJerkMean),gravityMean)
* Average_of_angle(tBodyGyroMean,gravityMean)
* Average_of_angle(tBodyGyroJerkMean,gravityMean)
* Average_of_angle(X,gravityMean)
* Average_of_angle(Y,gravityMean)
* Average_of_angle(Z,gravityMean)
