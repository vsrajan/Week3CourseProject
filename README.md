Week3CourseProject
==================
run_analysis.R assumes that it is running in the root of the "UCI HAR Dataset" directory.
It outputs a tidy dataset file "tidy.txt" in the same directory.

It assumes that the following files are present in the current working directory:
activity_labels.txt
features.txt
features_info.txt

The script assumes that 2 sub-directoris, test and train exist in the current working dir.

Test is assumed to contain the following files:
subject_test.txt
X_Test.txt
y_test.txt

Train is assumed to contain the following files:
subject_train.txt
X_train.txt
y_train.txt

The script first combines the Test and Train measurements, the Test and Train Subject data and the Test and Train activity info into a new file.

