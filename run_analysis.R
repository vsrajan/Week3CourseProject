run_analysis <- function()
{

## Step 1
## Merge test set and trining set into 1 data set
#Step1 for the measurement data
xtest <- read.table("./test/X_test.txt")
xtrain <- read.table("./train/x_train.txt")
x <- rbind(xtest, xtrain)
#Step1 for activity data
ytest <- read.table("./test/y_test.txt")
ytrain <- read.table("./train/y_train.txt")
y <- rbind(ytest, ytrain)
names(y) <- c("activity_code")
#Step1 for Subject data
subjecttest <- read.table("./test/subject_test.txt")
subjecttrain <- read.table("./train/subject_train.txt")
subject <- rbind(subjecttest, subjecttrain)
names(subject) <- c("subject")

##Step2 - Extract only those measurements that are related to mean and standard deviation
#Read the feaures file for a description of the features
features <- read.table("features.txt")
#Get the Column indexes of those with Mean, mean or std in their names. These are the Columns that are needed.
index <- grep("Mean|mean|std", features[, 2])
#Get only those columns into a new DataFrame called xindex
xindex <- x[, index]


#Step4
#Set the column names for the xindex. These are descriptive Column names that we need.
#Doing this out of order as it makes sense to do this as soon as the relevant columns are extracted.
colnames(xindex) <- features[index, 2]


#Step3
#Merge Measurement data, Subject data and activity data into 1 dataframe
xindex <- cbind(subject, y, xindex)

#Read the activity labels file to get the activity labels
activity <- read.table("activity_labels.txt")

#Set descriptive names for the activity dataframe
colnames(activity) <- c("activity_code", "activity_description")

#Merge xindex with the actitity to get the correct activity labels for each measurement
xmerge <- merge(x = xindex, y = activity, by="activity_code", all.x=TRUE, all.y=FALSE)


#Step5
#First, split by Subject and Activity
s <- split(xmerge, list(xmerge$subject, xmerge$activity_description))

#Use lapply to calculate colMeans of the measurement values
#Use cbind to create a dataframe with 1 row foreach Subject, Activity combination
res <- lapply(s, function(x){ cbind(x[1, 1:2], x[1, 89],  t(matrix(colMeans(x[, 3:88])))) })

#Output of lapply is a list. Use do.call to convert list into a DataFrame.
resdf <- do.call("rbind", res)

#Rename columnnames of the final output. Append Average_of to the original column names
colnames(resdf)[4:89] <- paste("Average_of_", names(xindex)[3:88], sep="")
colnames(resdf)[3] <- "Activity_Description"

#Remove any NAs
op <- resdf[complete.cases(resdf), ]

#order by Subect and Activity
op <- op[order(op$subject, op$activity_code), ]

#Writeout final output to file
write.table(op, "tidy.txt", row.names=FALSE, quote=FALSE)

print("Done processing.")
}