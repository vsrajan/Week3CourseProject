Week3CourseProject
==================

##Input to the script
run_analysis.R assumes that it is running in the root of the "UCI HAR Dataset" directory.

It assumes that the following files are present in the current working directory:
* activity_labels.txt
* features.txt
* features_info.txt

The script assumes that 2 sub-directoris, test and train exist in the current working dir.

####Test is assumed to contain the following files:
* subject_test.txt
* X_Test.txt
* y_test.txt

####Train is assumed to contain the following files:
* subject_train.txt
* X_train.txt
* y_train.txt

##Output of the script
The script writes out a file "tidy.txt" to the current working directory. 
The output file has 1 row for each subject, activity combination.
The ouput file is a space delimited file which has the following columns:
activity_code
* subject
* activity_description
* 86 columns starting with Average_of_ which calcualte the averages of all the mean and std measurements from the origianl data, broken out by subject and activity.

##Sequence of processing steps
1. The script first combines the Test and Train measurements, the Test and Train Subject data and the Test and Train activity info into a new file. This corresponds to Step1 of the course project.
2. It reads the features.txt file to get a description of all the columns in the measurements data. Since we are interested only in measurements that relate to mean and std, the script uses the grep() function look for all column names that contain mean and std. This returns 86 columns. It get's the index of these columns and extracts these columns form the original measurements data into the xindex variable. Done with the following lines of code:
````index <- grep("Mean|mean|std", features[, 2])````
````xindex <- x[, index]````
This corresponds to step2 of the course project.
3. The script then gets the names of the extracted columns from the features.txt table and assigns them to the colnames of the xindex variable. This corresponds to step4 of the course project. I am doing this out of sequence as logically, it makes sense to assign names before combining the measurements data with the subject and activity data.
4. It combines the measurement data, the subject data and the activity-code into a single data frame. _This data frame now has 89 columns, subject, activitycode, activity-description and the 86 measurement columns._ 
5. It reads the activity table to get a description of all the activities.
6. It then merges the activity description into the data frame containing the measurements and subject data. This step corresponds to step3 of the course project.
7. The script then splits the data frame by subject and activity description and then uses lapply to calculate the averages of all the measurement columns. The output of lapply is a list where each element of the list is a dataframe with 1 row, corresponding to a distinct subject, activity combination with the averages of all the measurement columns. Done with the following code:
````s <- split(xmerge, list(xmerge$subject, xmerge$activity_description))````
````res <- lapply(s, function(x){ cbind(x[1, 1:2], x[1, 89],  t(matrix(colMeans(x[, 3:88])))) })````
8. The list is combined into a single data frame with this code:
````resdf <- do.call("rbind", res)````
9. The column names of all the average measurement columns are prefixed with "Average_of" to make it more descriptive.
10. The result is ordered by subect and activity and then written out to the tidy output file.



